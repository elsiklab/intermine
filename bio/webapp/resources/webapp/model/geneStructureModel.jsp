
<!-- geneStructureModel.jsp -->

<div class="collection-of-collections" id="gene-structure-model" style="height:80px">

    <link rel="stylesheet" type="text/css" href="jbrowse_renderer/genome.css">

<style>
/********************************************************
*   invisible containers, 
*   for features that also have a renderClass that gets centered, 
*      and for subfeatures that have rendered children 
*      (currently only subfeatures like this are exons, which have CDS and UTR child divs)
********************************************************/
.feature-name {
    z-index:0;
}
.RefSeq,
.plus-RefSeq,
.minus-RefSeq  {
    background-color: lightgray;
    height: 7px;
    z-index:0;
}
.RefSeq-CDS,
.plus-RefSeq-CDS,
.minus-RefSeq-CDS  {
    background-color: rgb(79,48,255);
    height: 11px;
    border: 1px solid gray;
    z-index:0;
}

.RefSeq-UTR,
.plus-RefSeq-UTR,
.minus-RefSeq-UTR {
    background-color: rgb(79,48,255);
    height: 9px;
    z-index:0;
}
</style>

<script>
var pid = '<c:out value="${gene.primaryIdentifier}"/>';


var organismMap={
    "A. mellifera": "26229",// Amel_4.5 NCBI Chromosome Assembly
    "A. dorsata": "1896242",// Ador_1.3 NCBI Scaffold Assembly
    "A. florea": "1583983", // Aflo_1.0 NCBI Scaffold Assembly
    "B. impatiens": "1710934", // Bimp_2.0 NCBI Scaffold Assembly
    "B. terrestris": "3116725", // Bter_1.0 NCBI Scaffold Assembly
    "N. vitripennis": "1805105", // Nvit_2.1 NCBI Chromosome Assembly
    "M. rotundata": "3122336" // Mrot_1.0 NCBI Scaffold Assembly
    //"A. cephalotes": "1935105",// Attacep_1.0_ncbi
    //"C. obscurior": "1697843",
    //"A. echinatior": "1811476",
    //"C. floridanus": "1911077",
    //"H. saltator": "3073857",
    //"L.  albipes": "91165",
    //"L. humile": "1591930",
    //"P. barbatus": "1825064",
    //"S. invicta": "1820465",
    //"W.	auropunctata": "1716495"
};
// Require bare bones jbrowse components without using the main browser object
require({
   packages: [
       'dbind',
       'dgrid',
       'dojo',
       'dijit',
       'dojox',
       'json-schema',
       'jszlib',
       { name: 'lazyload', main: 'lazyload' },
       'xstyle',
       'put-selector',
       { name: 'jDataView', location: 'jDataView/src', main: 'jdataview' },
       'FileSaver',
       'JBrowse'
   ]
},
[
   'dojo/cookie',
   'dojo/dom',
   'dojo/dom-construct',
   'dojo/dom-style',
   'dojo/dom-class',
   'JBrowse/Browser',
   'JBrowse/View/Track/HTMLFeatures',
   'JBrowse/Store/SeqFeature/NCList',
   'JBrowse/Model/SimpleFeature',
   'JBrowse/View/GranularRectLayout',
   'JBrowse/Store/Sequence/StaticChunked'
],
function (cookie,dom,domConstruct,domStyle,domClass,Browser,HTMLFeatures,NCList,SimpleFeature,Layout,StaticChunkedSequence) {
   //var hymine = new intermine.Service({root: "http://genomes.missouri.edu:8080/hymenopteramine"});
   var hymine = new intermine.Service({root: "http://hymenopteragenome.org/hymenopteramine-release-1.1"});

   var query = {
       from: 'Gene',
       select: [
           'chromosome.primaryIdentifier',
           'transcripts.chromosomeLocation.start',
           'transcripts.chromosomeLocation.end',
           'transcripts.chromosomeLocation.strand',
           'transcripts.exons.chromosomeLocation.start',
           'transcripts.exons.chromosomeLocation.end',
           'transcripts.primaryIdentifier',
           'transcripts.secondaryIdentifier',
           'transcripts.symbol',
           'organism.shortName'
       ],
       where: {
           primaryIdentifier: pid
       }
   };
   var createJBrowse=function(features,organism){
       var node=dom.byId("gene-structure-model");
       var height=15+Object.keys(features).length*31;
       domStyle.set(node,"height",height+'px');
       var trackConfig = {
          "style" : {
             "className" : "RefSeq",
             "subfeatureClasses" : {
                "wholeCDS" : null,
                "CDS" : "RefSeq-CDS",
                "UTR" : "RefSeq-UTR"
             },
          },
          "storeClass" : "JBrowse/Store/SeqFeature/NCList",
          "type" : "FeatureTrack",
          "showLabels":false,
          "onClick"  : {
              "label": "Feature name {name}\nFeature start {start}\nFeature end {end}",
              "url": "http://hymenopteragenome.org/Apollo2/jbrowse/index.html?organism=" + organismMap[organism]+ "&loc={name}",
              "action": "newWindow"
          },
          "menuTemplate":null
       };

       // Fake existence of jbrowse object
       var browser=new Browser({unitTestMode: true});
       browser.view={};
       var mmin=1000000000;
       var mmax=-1000000000;

       for(feature in features) {
           if(features[feature].start<mmin) mmin=features[feature].start;
           if(features[feature].end>mmax) mmax=features[feature].end;
       }
       browser.view.minVisible=function() { return mmin; };
       browser.view.maxVisible=function() { return mmax; };
       var track = new HTMLFeatures({
           refSeq: "refseq",
           config: trackConfig,
           changeCallback: function() { console.log("changeCallback"); },
           store: NCList,
           browser: browser
       });
       // Fake existence of genomeview object
       track.genomeView=browser.view;

       // fake a Block in the BlockBased tracktype
       var block={};
       block.featureLayout = new Layout(mmin, mmax);
       block.featureNodes = new Array();
       block.startBase = mmin - (mmax-mmin) * 0.1;
       block.endBase = mmax + (mmax-mmin) * 0.1;
       block.domNode=dom.byId("display");


       // Manually add block to track
       track.blocks=[block];
       track.label=dom.byId("label");
       track.measureStyles();
       track.updateStaticElements({x:0,y:0,width:2000,height:height});

       for(feature in features) {
           var simplefeature=new SimpleFeature({data: features[feature]});
           var fmin=simplefeature.get('start');
           var fmax=simplefeature.get('end');
           // Force calculate some CSS related things
           var featNode=track.renderFeature(simplefeature,simplefeature.get("name"),block,0.02,0.01,0.01,block.startBase,block.endBase);


           if(featNode) block.domNode.appendChild(featNode);
           else continue;

           // Must call center children after adding to node
           track._centerChildrenVertically(featNode);
       }
       track.updateStaticElements({x:0,y:0,width:2000,height:height});
   }
   hymine.rows(query).then(function(rows) {
       var features={};
       var organism;
       rows.forEach(function printRow(row) {
           var transcript=row[6];
           if(!(transcript in features)) {
               features[transcript]={
                       "type":"mRNA",
                       "start": row[1],
                       "end": row[2],
                       "strand": parseInt(row[3]),
                       "subfeatures":[],
                       "uniqueID":row[6],
                       "name":row[6]
                   };
           }
           console.log(row[9]);
           organism=row[9];
           features[transcript].subfeatures.push({
                   "start": row[4],
                   "end": row[5],
                   "type": "CDS",
                   "strand": features[transcript].strand
                });
       });
       
       createJBrowse(features,organism);
   });
});
</script>


<div id="display" style="margin:15px;position:absolute;width:75%;"></div>
<div id="label"></div>

</div>






<!-- /geneStructureModel.jsp -->
