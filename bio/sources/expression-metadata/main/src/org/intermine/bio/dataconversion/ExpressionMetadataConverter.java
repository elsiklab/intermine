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
    private HashMap<String,Item> publicationItems = new HashMap<String, Item>();

    private static final String DATASET_TITLE = "Apis mellifera RNASeq Expression dataset";
    private static final String DATA_SOURCE_NAME = "Apis mellifera RNASeq Expression dataset from NCBI SRA";
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
            String sampleName = line[0];
            String sampleMean = line[1];
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
 
            Item item = createItem("ExpressionMetadata");
            if (!sampleName.isEmpty()) {
                item.setAttribute("sampleName", sampleName);
            }
            else {
                System.out.println("sampleName cannot be empty as it serves as a primaryIdentifier");
                System.exit(1);
            }
            if (!sampleMean.isEmpty()) { item.setAttribute("sampleMean", sampleMean); }
            if (!bioSample.isEmpty()) { item.setAttribute("bioSample", bioSample); }
            if (!run.isEmpty()) { item.setAttribute("run", run); }
           if (!experiment.isEmpty()) { item.setAttribute("experiment", experiment); }
            if (!SRAStudy.isEmpty()) { item.setAttribute("SRAStudy", SRAStudy); }
            if (!bioProject.isEmpty()) { item.setAttribute("bioProject", bioProject); }
            if (!libraryLayout.isEmpty()) { item.setAttribute("libraryLayout", libraryLayout); }
            if (!bioSample_description.isEmpty()) { item.setAttribute("bioSample_description", bioSample_description); }
             if (!sample.isEmpty()) { item.setAttribute("sample", sample); }
            if (!organ_group.isEmpty()) { item.setAttribute("organ_group", organ_group); }
            if (!tissue_description.isEmpty()) { item.setAttribute("tissue_description", tissue_description); }
            if (!PO_term.isEmpty()) { item.setAttribute("PO_term", PO_term); }
            if (!PO_name.isEmpty()) { item.setAttribute("PO_name", PO_name); }
            if (!growth_stage.isEmpty()) { item.setAttribute("growth_stage", growth_stage); }
            if (!replicate.isEmpty()) { item.setAttribute("replicate", replicate); }
           
            
            
            
            try {
                store(item);
            } catch(Exception e) {
                System.out.println("Error while storing ExpressionMetadata item: " + item + "\nStacktrace: " + e);
            }
        }
    }
    
}
