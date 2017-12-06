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
import java.lang.Override;
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
public class MeanExpressionConverter extends BioFileConverter
{
    //
    protected static final Logger LOG = Logger.getLogger(MeanExpressionConverter.class);
    private String orgRefId;
    private static final String DATASET_TITLE = "Expression dataset";
    private static final String DATA_SOURCE_NAME = "Expression dataset";
    private static final String TAXON_ID = "4577";
    private ArrayList<String> sampleNames = new ArrayList<String>();
    private HashMap<String,Item> items = new HashMap<String, Item>();
    private HashMap<String,Item> transcriptItems = new HashMap<String, Item>();
    private HashMap<String, Item> sampleEntityMap = new HashMap<String, Item>();
    private String valueType = "";

    /**
     * Constructor
     * @param writer the ItemWriter used to handle the resultant items
     * @param model the Model
     */
    public MeanExpressionConverter(ItemWriter writer, Model model) {
        super(writer, model, DATA_SOURCE_NAME, DATASET_TITLE);
        orgRefId = getOrganism(TAXON_ID);
    }

    /**
     * 
     *
     * {@inheritDoc}
     */
    public void process(Reader reader) throws Exception {

        Iterator<String[]> lineIter = FormattedTextParser.parseTabDelimitedReader(reader);
        while (lineIter.hasNext()) {
            
            
            String[] line = lineIter.next();
            if (Pattern.matches("Transcript", line[0])) {
                // parsing header
                for (int i = 1; i < line.length; i++) {
                    sampleNames.add(line[i]);
                }
                continue;
            }
            File currentFile = getCurrentFile();
            String currentFileName = currentFile.getName().toUpperCase();
      //      if (currentFileName.contains("FPKM")) {
       //         valueType = "FPKM";
       //     }
            if (currentFileName.contains("MEANKM")) {
               valueType = "MEANKM";
             }
         else if (currentFileName.contains("MEANNORMALIZED")) {
                valueType = "MEANNORMALIZED";
           }
      //      else if (currentFileName.contains("NORMALIZED")) {
      //          valueType = "NORMALIZED";
      //      }
            else {
                System.out.println("Error: valueType never determined");
                System.exit(1);
            }
           
            String transcriptId = line[0];
            for (int i = 1; i < line.length; i++) {
                String value = line[i];
                String sampleName = sampleNames.get(i - 1);
                String key = transcriptId + "_" + sampleName;
                if (items.containsKey(key)) {
                    Item item = items.get(key);
        //           if (valueType.equals("FPKM")) {
        //               item.setAttribute("fpkm", value);
        //           }
                 if (valueType.equals("MEANKM")) {
                       item.setAttribute("meanFpkm", value);
                    } else if (valueType.equals("MEANNORMALIZED")) {
                       item.setAttribute("meanNormalized", value);
                   }
       //            else if (valueType.equals("NORMALIZED")) {
       //                 item.setAttribute("normalized", value);
       //             }
                    items.put(key, item);
                }
                else {
                    Item item = createItem("sampleMean");
                    item.setAttribute("sampleId", sampleName);
         //          if (valueType.equals("FPKM")) {
          //              item.setAttribute("fpkm", value);
         //          }
                    if (valueType.equals("MEANKM")) {
                        item.setAttribute("meanFpkm", value);
                   } else if (valueType.equals("MEANNORMALIZED")) {
                       item.setAttribute("meanNormalized", value);
                   }
           //        else if (valueType.equals("NORMALIZED")) {
          //              item.setAttribute("normalized", value);
          //         }
                    items.put(key, item);
                }
              
                         //

                if (transcriptItems.containsKey(transcriptId)) {
                    Item item = items.get(key);
                    Item tmpTranscriptItem = transcriptItems.get(transcriptId);
                    item.setReference("isoforms", tmpTranscriptItem.getIdentifier());
                    tmpTranscriptItem.addToCollection("meanExpressionValues", item.getIdentifier());
                    items.put(key, item);
                    transcriptItems.put(transcriptId, tmpTranscriptItem);
                }
                else {
                    Item transcriptItem = createItem("MRNA");
                    Item item = items.get(key);
                    transcriptItem.setAttribute("primaryIdentifier", transcriptId);
                    transcriptItem.addToCollection("meanExpressionValues", item.getIdentifier());
                    item.setReference("isoforms", transcriptItem.getIdentifier());
                    items.put(key, item);
                    transcriptItems.put(transcriptId, transcriptItem);
                }
       
         
            }
        }
    }

    /**
     * Storing all Expression Items
     */
    public void storeAllItems() {
        for (String key : items.keySet()) {
            try {
                store(items.get(key));
            } catch (Exception e) {
                System.out.println("Error while storing item:\n" + items.get(key) + "\nStackTrace:\n" + e);
            }
        }
    }

    /**
     * Storing all Transcript Items
     */
    public void storeAllTranscriptItems() {
        for (String key : transcriptItems.keySet()) {
            try {
                store(transcriptItems.get(key));
            } catch (Exception e) {
                System.out.println("Error while storing Transcript item:\n" + transcriptItems.get(key) + "\nStackTrace:\n" + e);
            }
        }
    }

    

    /**
     *
     * {@inheritDoc}
     */
    @Override
    public void close() throws Exception {
        storeAllItems();
        storeAllTranscriptItems();
    }
}
