package org.intermine.bio.dataconversion;

/*
 * Copyright (C) 2002-2015 FlyMine
 *
 * This code may be freely distributed and modified under the
 * terms of the GNU Lesser General Public Licence.  This should
 * be distributed with the code.  See the LICENSE file for more
 * information or http://www.gnu.org/copyleft/lesser.html.
 *
 */

import java.io.File;
import java.io.Reader;
import java.lang.Exception;
import java.lang.String;
import java.lang.System;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.Matcher;
import org.intermine.objectstore.ObjectStoreException;
import org.intermine.dataconversion.ItemWriter;
import org.intermine.metadata.Model;
import org.intermine.xml.full.Item;
import org.apache.log4j.Logger;
import org.intermine.util.FormattedTextParser;


/**
 * 
 * @author
 */
public class ExpressionMetadataConverter extends BioFileConverter
{
    //
    protected static final Logger LOG = Logger.getLogger(ExpressionMetadataConverter.class);
    private String orgRefId;
    private Map<String, String> genes = new HashMap<String, String>();
    private static final String DATASET_TITLE = "Expression dataset";
    private static final String DATA_SOURCE_NAME = "Expression dataset";

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public ExpressionMetadataConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
    }

    /**
     * 
     *
     * {@inheritDoc}
     */
    public void process(Reader reader) throws Exception {
        // assumes that the metadata file has unique entries
        Iterator<String[]> lineIter = FormattedTextParser.parseTabDelimitedReader(reader);

        while (lineIter.hasNext()) {
            String[] line = lineIter.next(); 
            System.out.println(line.toString());
            String Sample_rep_id = line[0];
            String SampleID = line[1];
            String bioSample = line[2];	
	String run = line[3];	
	String experiment = line[4];	
	String SRAStudy	= line[5];
	String bioProject = line[6];	
	String libraryLayout = line[7];	
	String sample = line[8];	
	String bioSample_description = line[9];	
	String organ_group = line[10];	
	String tissue_description = line[11];	
	String PO_term	= line[12];
	String PO_name	= line[13];
	String growth_stage = line[14];	
	String replicate = line[15];


            String refId1 = parseSample1(Sample_rep_id);
            String refId2 = parseSample2(SampleID);

            processReps(refId1, refId2, bioSample, run, experiment, SRAStudy, bioProject, libraryLayout, sample, bioSample_description, organ_group, tissue_description, PO_term, PO_name, growth_stage, replicate);
            processReps(refId2, refId1, bioSample, run, experiment, SRAStudy, bioProject, libraryLayout, sample, bioSample_description, organ_group, tissue_description, PO_term, PO_name, growth_stage, replicate);
   }
}

    private void processReps(String Sample_rep_id, String SampleID, String bioSample, String run, String experiment, 
                    String SRAStudy, String bioProject, String libraryLayout, String sample, String bioSample_description, String organ_group, String tissue_description, String PO_term, String PO_name, String growth_stage, String replicate)throws ObjectStoreException {
        Item reference = createItem("ExpressionMetaData");
        reference.setAttribute("bioSample", bioSample);
        reference.setAttribute("run", run);
         reference.setAttribute("experiment", experiment);
         reference.setAttribute("SRAStudy", SRAStudy);
         reference.setAttribute("bioProject", bioProject);
         reference.setAttribute("libraryLayout", libraryLayout);
         reference.setAttribute("sample", sample);
         reference.setAttribute("bioSample_description", bioSample_description);
         reference.setAttribute("organ_group", organ_group);
         reference.setAttribute("tissue_description", tissue_description);      
         reference.setAttribute("PO_term", PO_term);
          reference.setAttribute("PO_name", PO_name);
          reference.setAttribute("growth_stage", growth_stage);
         reference.setAttribute("replicate", replicate);
                reference.setAttribute("sampleRepId",Sample_rep_id);
        reference.setAttribute("sampleId", SampleID);

        reference.setReference("sampleRepId",Sample_rep_id);
        reference.setReference("sampleId", SampleID);
        store(reference);
    }

    


    private String parseSample1(String identifier) throws ObjectStoreException {
        String newIdentifier = identifier;
        
        String refId = genes.get(newIdentifier);
        if (refId == null) {
            Item item = createItem("SampleReplicate");
            item.setAttribute("sampleRepId", newIdentifier);
            store(item);
            refId = item.getIdentifier();
            genes.put(newIdentifier, refId);
        }
        return refId;
    }


private String parseSample2(String identifier) throws ObjectStoreException {
        String newIdentifier = identifier;
        
        String refId = genes.get(newIdentifier);
        if (refId == null) {
            Item item = createItem("SampleMean");
            item.setAttribute("sampleId", newIdentifier);
            store(item);
            refId = item.getIdentifier();
            genes.put(newIdentifier, refId);
        }
        return refId;
    }


}
