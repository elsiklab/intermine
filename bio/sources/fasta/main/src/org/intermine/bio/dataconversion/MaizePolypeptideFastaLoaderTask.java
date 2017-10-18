package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2016 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.HashMap;
import java.util.Map;
import java.util.HashSet;

import org.biojava.bio.Annotation;
import org.biojava.bio.seq.Sequence;
import org.intermine.metadata.Model;
import org.intermine.model.FastPathObject;
import org.intermine.model.InterMineObject;
import org.intermine.model.bio.BioEntity;
import org.intermine.model.bio.DataSet;
import org.intermine.model.bio.Location;
import org.intermine.model.bio.Organism;
import org.intermine.model.bio.SequenceFeature;
import org.intermine.objectstore.ObjectStore;
import org.intermine.objectstore.ObjectStoreException;
import org.intermine.util.DynamicUtil;
import org.intermine.objectstore.query.PendingClob;
import org.intermine.metadata.Util;
import org.apache.tools.ant.BuildException;
import java.lang.System;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.net.URLDecoder;
import org.apache.commons.lang.StringUtils;

import java.util.HashMap;
import java.util.HashSet;
import org.intermine.bio.io.gff3.GFF3Record;
import org.intermine.metadata.Model;
import org.intermine.metadata.StringUtil;
import org.intermine.xml.full.Item;
import java.util.Map;
import java.util.Map.Entry;
/**
 * A fasta loader that understand the headers of Maize Peptide fasta files and can make the
 * appropriate extra objects and references.
 * @author
 */
public class MaizePolypeptideFastaLoaderTask extends MaizeFeatureFastaLoaderTask
{

    private String classAttribute = "primaryIdentifier";
    private int storeCount = 0;
    private String suffix = "-PEP";
    private String suffixPattern = "\\S+(_P\\d\\d)$";
    private String source = null;
    // hashmap to keep track of InterMineObject of type Gene
    private Map<String, InterMineObject> geneIdMap = new HashMap<String, InterMineObject>();
    // hashmap to keep track of InterMineObject of type MRNA
    private Map<String, InterMineObject> mrnaIdMap = new HashMap<String, InterMineObject>();

    /**
     * {@inheritDoc}
     */
    @Override
    protected void processSequence(Organism organism, Sequence bioJavaSequence) throws ObjectStoreException {

        if (organism == null) {
            return;
        }

        org.intermine.model.bio.Sequence proteinSequenceObject = getDirectDataLoader().createObject(
                org.intermine.model.bio.Sequence.class);

        String sequence = bioJavaSequence.seqString();
        String md5checksum = Util.getMd5checksum(sequence);
        proteinSequenceObject.setResidues(new PendingClob(sequence));
        proteinSequenceObject.setLength(bioJavaSequence.length());
        proteinSequenceObject.setMd5checksum(md5checksum);

        Class<? extends InterMineObject> imClass;
        Class<?> c;
        try {
            c = Class.forName(getClassName());
            if (InterMineObject.class.isAssignableFrom(c)) {
                imClass = (Class<? extends InterMineObject>) c;
            } else {
                throw new RuntimeException("Feature className must be a valid class in the model that inherits from InterMineObject, but was: " + getClassName());
            }
        } catch (ClassNotFoundException e1) {
            throw new RuntimeException("unknown class: " + getClassName() + " while creating new Sequence object");
        }

        BioEntity imo = (BioEntity) getDirectDataLoader().createObject(imClass);
        String sequenceName = getIdentifier(bioJavaSequence);
        String attributeValue;
        Pattern p = Pattern.compile(suffixPattern);
        Matcher m = p.matcher(sequenceName);

        if (sequenceName.endsWith(suffix)) {
            attributeValue = sequenceName;
        }
        else if (m.matches()) {
            attributeValue = sequenceName;
        }
        else {
            attributeValue = sequenceName + suffix;
        }

        // set primaryIdentifier
        try {
        //    System.out.println("Setting " + classAttribute + " as " + attributeValue);
            imo.setFieldValue(classAttribute, attributeValue);
        } catch (Exception e) {
            throw new IllegalArgumentException("Error setting: " + getClassName() + "." + classAttribute + " to: " + attributeValue + ". Does the attribute exist?");
        }

        // set sequence
        try {
            imo.setFieldValue("sequence", proteinSequenceObject);
        } catch (Exception e) {
            throw new IllegalArgumentException("Error setting: " + getClassName() + ".sequence to: " + attributeValue + ". Does the attribute exist?");
        }

        // set organism
        imo.setOrganism(organism);

        // set length
        try {
            imo.setFieldValue("length", new Integer(proteinSequenceObject.getLength()));
        } catch (Exception e) {
            throw new IllegalArgumentException("Error setting: " + getClassName() + ".length to: " + proteinSequenceObject.getLength() + ". Does the attribute exist?");
        }

        // set md5checksum
        try {
            imo.setFieldValue("md5checksum", md5checksum);
        } catch (Exception e) {
        }

        extraProcessing(bioJavaSequence, proteinSequenceObject, imo, organism, getDataSet());

        DataSet dataSet = getDataSet();
        imo.addDataSets(dataSet);

        try {
            getDirectDataLoader().store(proteinSequenceObject);
            getDirectDataLoader().store(imo);
            storeCount += 2;
        } catch (ObjectStoreException e) {
            throw new BuildException("store failed", e);
        }
    }

    /**
     * {@inheritDoc}
     */
    @Override
    protected void extraProcessing(Sequence bioJavaSequence, org.intermine.model.bio.Sequence flymineSequence, BioEntity bioEntity, Organism organism, DataSet dataSet) throws ObjectStoreException {

        String geneIdentifier = null;
        String mrnaIdentifier = null;
        Annotation annotation = bioJavaSequence.getAnnotation();
        String header = (String) annotation.getProperty("description");
        String regexp =  "\\s+\\S+:(\\S+\\s\\S+):(\\S+):([0-9]+:[0-9]+):(\\S+)\\sgene:(\\S+)\\stranscript:(\\S+).+$";
      //  >GRMZM5G816453_P01 pep:known chromosome:B73_RefGen_v3:Mt:8752:9915:1 gene:GRMZM5G816453 transcript:GRMZM5G816453_T01 description:"protein"
        Pattern p = Pattern.compile(regexp);
        Matcher m = p.matcher(header);
        if (m.matches()) {
            geneIdentifier = m.group(5);
            mrnaIdentifier = m.group(6);
        }

        ObjectStore os = getIntegrationWriter().getObjectStore();
        Model model = os.getModel();
        if (model.hasClassDescriptor(model.getPackageName() + ".Polypeptide")) {
            Class<? extends FastPathObject> pepCls = model.getClassDescriptorByName("Polypeptide").getType();
            if (!DynamicUtil.isInstance(bioEntity, pepCls)) {
                throw new RuntimeException("the InterMineObject passed to "
                        + "MaizePolypeptideFastaLoaderTask.extraProcessing() is not a "
                        + "Polypeptide: " + bioEntity);
            }

            if (geneIdentifier != null) {
                InterMineObject gene = null;
                if (geneIdMap.containsKey(geneIdentifier)) {
                    gene = geneIdMap.get(geneIdentifier);
                }
                else {
                    gene = getGene(geneIdentifier, getGeneSource(), organism, model);
                }
                if(gene != null) {
                    bioEntity.setFieldValue("gene", gene);
                    bioEntity.setFieldValue("geneIdentifier", geneIdentifier);
                }
                try {
                    HashSet polypeptidesCollection = (HashSet) gene.getFieldValue("polypeptides");
                    polypeptidesCollection.add(bioEntity);
                    gene.setFieldValue("polypeptides", polypeptidesCollection);
                    // updating the geneIdMap
                    geneIdMap.put(geneIdentifier, gene);
                } catch(IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
            if (mrnaIdentifier != null) {
                InterMineObject mrna = null;
                if (geneIdMap.containsKey(mrnaIdentifier)) {
                    mrna = mrnaIdMap.get(mrnaIdentifier);
                }
                else {
                    mrna = getMRNA(mrnaIdentifier, organism, model);
                }
                if (mrna != null) {
                    bioEntity.setFieldValue("mrna", mrna);
                    bioEntity.setFieldValue("mrnaIdentifier", mrnaIdentifier);
                }
                try {
                    HashSet polypeptideCollection = (HashSet) mrna.getFieldValue("polypeptide");
                    polypeptideCollection.add(bioEntity);
                    mrna.setFieldValue("polypeptide", polypeptideCollection);
                    // updating the mrnaIdMap
                    mrnaIdMap.put(mrnaIdentifier, mrna);
                } catch(IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        } else {
            throw new RuntimeException("Trying to load Polypeptide sequence but Polypeptide does not exist in the data model");
        }
    }
}
