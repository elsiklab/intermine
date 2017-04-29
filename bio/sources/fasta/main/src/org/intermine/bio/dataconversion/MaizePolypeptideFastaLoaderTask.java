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

/**
 * A fasta loader that understand the headers of Maize Peptide fasta files and can make the
 * appropriate extra objects and references.
 * @author
 */
public class MaizePolypeptideFastaLoaderTask extends MaizeFeatureFastaLoaderTask
{
    // hashmap to keep track of InterMineObject of type Gene
    private Map<String, InterMineObject> geneIdMap = new HashMap<String, InterMineObject>();
    // hashmap to keep track of InterMineObject of type MRNA
    private Map<String, InterMineObject> mrnaIdMap = new HashMap<String, InterMineObject>();

    /**
     * {@inheritDoc}
     */
    @Override
    protected void extraProcessing(Sequence bioJavaSequence,
                                   org.intermine.model.bio.Sequence flymineSequence,
                                   BioEntity bioEntity, Organism organism, DataSet dataSet)
            throws ObjectStoreException {

        Annotation annotation = bioJavaSequence.getAnnotation();
        String geneIdentifier = null;
        String mrnaIdentifier = null;
        String header = (String) annotation.getProperty("description");
        String[] headerSplitStringList = header.trim().split(" ");
        String source = getSource(header);
        HashMap dict = new HashMap();
        for (String element :  header.trim().split(" ")) {
            String[] elementSplitList = element.split(":",2);
            if (elementSplitList.length == 2){
                dict.put(elementSplitList[0], elementSplitList[1]);
            }
        }
        geneIdentifier = dict.get("gene").toString();
        mrnaIdentifier = dict.get("transcript").toString();

        ObjectStore os = getIntegrationWriter().getObjectStore();
        Model model = os.getModel();
        if (model.hasClassDescriptor(model.getPackageName() + ".Polypeptide")) {
            Class<? extends FastPathObject> pepCls = model.getClassDescriptorByName("Polypeptide").getType();
            if (!DynamicUtil.isInstance(bioEntity, pepCls)) {
                throw new RuntimeException("the InterMineObject passed to "
                        + "MaizePolypeptideFastaLoaderTask.extraProcessing() is not a "
                        + "Polypeptide: " + bioEntity);
            }
            bioEntity.setFieldValue("source",source);

            if (geneIdentifier != null) {
                InterMineObject gene = null;
                if (geneIdMap.containsKey(geneIdentifier)) {
                    gene = geneIdMap.get(geneIdentifier);
                }
                else {
                    gene = getGene(geneIdentifier, organism, model, source);
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
                    mrna = getMRNA(mrnaIdentifier, organism, model, source);
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
            Location loc = getLocationFromHeader(header, (SequenceFeature) bioEntity, organism);
            getDirectDataLoader().store(loc);
        } else {
            throw new RuntimeException("Trying to load Polypeptide sequence but Polypeptide does not exist in the data model");
        }
    }
}