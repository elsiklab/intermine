<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<!-- dataCategories -->
<c:set var="note1" value="Only genes that have been mapped to the genome have been loaded"/>
<c:set var="note2" value="Also orthologues from these organisms to <i>C. familiaris</i>, <i>D. discoideum</i>, <i>D. rerio</i>, <i>G. gallus</i>, <i>H. sapiens</i>, <i>M. musculus</i>, <i>P. troglodytes</i>, <i>R. norvegicus</i>, <i>S. pombe</i>." />
<c:set var="note3" value="These data have been re-mapped to genome sequence release 5.0 as of FlyMine release 7.0."/>
<html:xhtml/>
<div class="body">
   <im:boxarea title="Data" stylename="plainbox">
      <p>
         <fmt:message key="dataCategories.intro"/>
      </p>
   </im:boxarea>
   <table cellpadding="0" cellspacing="0" border="0" class="dbsources">
      <tr>
         <th>Data Category</th>
         <th>Description</th>
         <th>Organism</th>
         <th>Source</th>
         <th>PubMed</th>
         <th>Note</th>
      </tr>
      <tr>
         <td rowspan="34" class="leftcol">
            <h2>
               <p>Genes</p>
            </h2>
         </td>
         <td rowspan="18">Consortium Official Gene Set</td>
         <td>M. rotundata</td>
         <td>Megachile_rotundata_v1.1(Alias:10BeeProject,OrthodbID)(xRef:Mrot_NCBI)</td>
         <td>Suen et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21347285">21347285</a></td>
         <td><a href="http://www.hymenopteragenome.org/atta/?q=genome_consortium_datasets">HGD Ant Genomes</a></td>
      </tr>
      <tr>
        <td>A. echinatior</td>
        <td>aech_OGSv3.8(Alias:aech_consortium)(xRef:RefSeq)</td>
        <td>Nygard et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21719571">21719571</a></td>
        <td><a href="http://www.hymenopteragenome.org/acromyrmex/?q=genome_consortium_datasets">HGD Ant Genomes</a></td>
      </tr>
      <tr>
         <td>A.   mellifera</i></td>
         <td>amel_OGSv3.2(Alias:amel_OGSv1.0)(xRef:RefSeq)</td>
         <td>Elsik et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24479613">24479613</a></td>
         <td>               <a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets">HGD BeeBase</a></td>
      </tr>
        <td>B.   impatiens</td>
        <td>Bombus_impatiens_v1.2(xRef:Bimp_NCBI)</td>
        <td>Sadd et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25908251">25908251</a></td>
        <td>               <a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets">HGD BeeBase</a></td>
      </tr>
      <tr>
         <td>C.   floridanus</td>
         <td>cflo_OGSv3.3(Alias:cflo_consortium)(xRef:RefSeq)<br/>&nbsp;</td>
         <td>Bonasio et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20798317">20798317</a></td>
         <td><a href="http://www.hymenopteragenome.org/camponotus/?q=genome_consortium_datasets">HGD Ant Genomes</a></td>
      </tr>
      <tr>
         <td>C.   obscurior</td>
         <td>cobs_OGSv1.4</td>
         <td>Schrader et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25510865">25510865</a></td>
         <td><a href="http://www.hymenopteragenome.org/cardiocondyla/?q=genome_consortium_datasets">HGD Ant Genomes</a></td>
      </tr>
      <tr>
         <td>H.   saltator<br/>&nbsp;<br/>&nbsp;</td>
         <td>hsal_OGSv3.3(Alias:hsal_consortium)(xRef:RefSeq)<br/>&nbsp;</td>
         <td>Bonasio et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20798317">20798317</a></td>
         <td><a href="http://www.hymenopteragenome.org/harpegnathos/?q=genome_consortium_datasets">HGD Ant Genomes</a></td>
      </tr>
      <tr>
         <td>L.   albipes</td>
         <td>lalb_OGSv5.42(Alias:lalb_consortium)</td>
         <td>Kocher et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24359881">24359881</a></td>
         <td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets">HGD BeeBase</a></td>
      </tr>
      <tr>
         <td>  L. humile</td>
         <td>lhum_OGSv1.2(xRef:RefSeq)</td>
         <td>Smith et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21282631">21282631</a></td>
         <td><a href="http://hymenopteragenome.org/linepithema/?q=genome_consortium_datasets">HGD  Ant Genomes</a></td>
      </tr>
      <tr>
         <td>P.   barbatus</td>
         <td>pbar_OGSv1.2(xRef:RefSeq)</td>
         <td>Smith et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21282651">21282651</a></td>
         <td><a href="http://hymenopteragenome.org/pogo/?q=genome_consortium_datasets">HGD  Ant Genomes</a></td>
      </tr>
      <tr>
         <td> S. invicta</td>
         <td>sinv_OGSv2.2.3(Alias:sinv_consortium)(xRef:RefSeq)</td>
         <td>Wurm et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21282665">21282665</a></td>
         <td><a href="http://hymenopteragenome.org/solenopsis/?q=genome_consortium_datasets">HGD  Ant Genomes</a></td>
      </tr>
       <tr>
         <td> N. vitripennis</td>
         <td>nvit_OGS1.2(xRef:RefSeq,nvit2_evigenes_pub11u)</td>
          <td></td>
           <td></td>
      </tr> 
           <tr>
         <td>N. vitripennis</td>
         <td>nvit2_evigenes_pub11u(xRef:nvit_OGS1.2,RefSeq)</td>
          <td></td>
           <td></td>
      </tr>
       <tr>
         <td>D. novaeangliae</td>
         <td>Dufourea_novaeangliae_v1.1(Alias:10BeeProject,OrthodbID)(xRef:RefSeq)</td>
              <td></td>
              <td></td>
      </tr>
       <tr>
         <td> E. mexicana</td>
         <td>Eufriesea_mexicana_v1.1(Alias:10BeeProject,OrthodbID)</td>
            <td></td>
            <td></td>
      </tr>
       <tr>
         <td> H. laboriosa</td>
         <td>Habropoda_laboriosa_v1.2(Alias:10BeeProject,OrthodbID)</td>
          <td></td>
            <td></td>
      </tr>
       <tr>
         <td> M. quadrifasciata</td>
         <td>Melipona_quadrifasciata_v1.1(Alias:10BeeProject,OrthodbID)</td>
          <td></td>
           <td></td>
      </tr>
      <tr>
         <td> C. biroi</td>
         <td>armyant.OGS.V1.8.6(Alias:cbir_consortium)(xRef:RefSeq)</td>
         <td></td>
         <td></td>
      </tr>
      



      <tr>
         <td rowspan="16">NCBI Annotation  (RefSeq and Gene)</td>
         <td>A.   dorsata</td>
         <td>Ador_NCBI-Release 100(Alias:Ador_Gnomon)</td>
         <td rowspan="16"><p>Pruitt et al - PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24259432">24259432</a></p><p>Brown et al - PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25355515">25355515</a></p></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_dorsata/latest_assembly_versions/GCF_000469605.1_Apis_dorsata_1.3/">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               A. echinatior</td>
         <td>        RefSeq-Release 100(xRef:aech_OGSv3.8)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Acromyrmex_echinatior/latest_assembly_versions/GCF_000204515.1_Aech_3.9">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               A. mellifera</td>
         <td>              Amel_NCBI-Release 102(Alias:amel_OGSv1.0)(xRef:amel_OGSv3.2)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_mellifera/latest_assembly_versions/GCF_000002195.4_Amel_4.5">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               B. impatiens</td>
         <td>         Bimp_NCBI-Release 101(xRef:Bombus_impatiens_v1.2)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_impatiens/latest_assembly_versions/GCF_000188095.1_BIMP_2.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               B. terrestris</td>
         <td>          Bter_NCBI-Release 101(Alias:Bter_Gnomon)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_terrestris/latest_assembly_versions/GCF_000214255.1_Bter_1.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               C. floridanus</td>
         <td>          RefSeq-Release 100(xRef:cflo_OGSv3.3)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Camponotus_floridanus/all_assembly_versions/GCF_000147175.1_CamFlo_1.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               H. saltator</td>
         <td>          RefSeq-Release 100(xRef:hsal_OGSv3.3)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Harpegnathos_saltator/latest_assembly_versions/GCF_000147195.1_HarSal_1.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               L. humile</td>
         <td>          RefSeq-Release 100(xRef:lhum_OGSv1.2)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Linepithema_humile/latest_assembly_versions/GCF_000217595.1_Lhum_UMD_V04">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               P. barbatus</td>
         <td>          RefSeq-Release 100(xRef:pbar_OGSv1.2)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Pogonomyrmex_barbatus/latest_assembly_versions/GCF_000187915.1_Pbar_UMD_V03">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               N. vitripennis</td>
         <td>          RefSeq-Release 101(xRef:nvit_OGSv1.2,nvit2_evigenes_pub11u)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Nasonia_vitripennis/latest_assembly_versions/GCF_000002325.3_Nvit_2.1">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               S. invicta</td>
         <td>           RefSeq-Release 100(xRef:sinv_OGSv2.2.3)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Solenopsis_invicta/latest_assembly_versions/GCF_000188075.1_Si_gnG">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               C. biroi</td>
         <td>           RefSeq-Release 100(xRef:armyant.OGS.V1.8.6)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Cerapachys_biroi/latest_assembly_versions/GCF_000611835.1_CerBir1.0">NCBI ftp</a></td>
      </tr>
       <tr>
         <td>               A. florea</td>
         <td>            RefSeq-Release 101(Alias:Aflo_Gnomon)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_florea/latest_assembly_versions/GCF_000184785.2_Aflo_1.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>               W. auropunctata</td>
         <td>            RefSeq-Release 100(Alias:Waur_Gnomon)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Wasmannia_auropunctata/latest_assembly_versions/GCF_000956235.1_wasmannia.A_1.0">NCBI ftp</a></td>
      </tr>
       <tr>
         <td>               D. novaeangliae</td>
         <td>            RefSeq-Release 100(xRef:Dufourea_novaeangliae_v1.1)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Dufourea_novaeangliae/latest_assembly_versions/GCF_001272555.1_ASM127255v1">NCBI ftp</a></td>
      </tr>
       <tr>
         <td>               M. rotundata</td>
         <td>             RefSeq-Release 101(xRef:Megachile_rotundata_v1.1)</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Megachile_rotundata/latest_assembly_versions/GCF_000220905.1_MROT_1.0">NCBI ftp</a></td>
      </tr>
      <tr>



         <td class="leftcol" rowspan="22"><h2>Homology</h2></td>
         <td rowspan="22">Orthologue and paralogue relationships from OrthoDB</td>
         <td>A. dorsata</td>
         <td rowspan="22">OrthoDB Version 9</td>
         <td rowspan="22">Kriventseva et al - PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25428351">25428351</a></td>
         <td rowspan="22"><a href="ftp://cegg.unige.ch/OrthoDB9"> OrthoDB ftp</a></td>
      </tr>
      <tr>
         <td>A. mellifera</td>
      </tr>
      <tr>
         <td>A. echinatior</td>
      </tr>
      <tr>
         <td>A. florea</td>
      </tr>
      <tr>
         <td>B. impatiens</td>
      </tr>
      <tr>
         <td>B. terrestris</td>
      </tr>
      <tr>
         <td>C. floridanus</td>
      </tr>
      <tr>
         <td>H. saltator</td>
      </tr>
      <tr>
         <td>L. humile</td>
      </tr>
      <tr>
         <td>N. vitripennis</td>
      </tr>
      <tr>
         <td>P. barbatus</td>
      </tr>
      <tr>
         <td>S. invicta</td>
      </tr>
      <tr>
         <td>D. melanogastor</td>
      </tr>
           <tr>
         <td>C. obscurior </td>
      </tr>
            <tr>
         <td>C. biroi</td>
      </tr>
            <tr>
         <td>D. novaeangliae </td>
      </tr>
            <tr>
         <td>E. mexicana</td>
      </tr>
             <tr>
         <td>H. laboriosa</td>
      </tr>
            <tr>
         <td>L. albipes </td>
      </tr>
              <tr>
         <td>M. rotundata</td>
      </tr>
            <tr>
         <td>W. auropunctata </td>
      </tr>
           <tr>
         <td>M. quadrifasciata</td>
      </tr>


 
     
      <tr>
         <td class="leftcol" rowspan="32"><h2>Proteins</h2></td>
         <td rowspan="16">Protein Annotations from UniProt</td>
         <td>A. dorsata</td>
         <td rowspan="16">UniProt Release 2017_01</td>
         <td rowspan="16">UniProt Consortium PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25348405">25348405</a></td>
         <td rowspan="16"><a href="ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/">UniProt FTP</a></td>
      <tr>
         <td>A. echinatior</td>
      </tr>
      <tr>
         <td>A. mellifera</td>
      </tr>
      <tr>
         <td>B. impatiens</td>
      </tr>
      <tr>
         <td>B. terrestris</td>
      </tr>
      <tr>
         <td>C. floridanus</td>
      </tr>
      <tr>
         <td>H. saltator</td>
      </tr>
      <tr>
         <td>L. humile</td>
      </tr>
      <tr>
         <td>P. barbatus</td>
      </tr>
      <tr>
         <td>N. vitripennis</td>
      </tr>
      <tr>
         <td>S. invicta </td>
      </tr>
            <tr>
         <td>C. biroi </td>
      </tr>
            <tr>
         <td>D. novaeangliae </td>
      </tr>
            <tr>
         <td>A. florea</td>
      </tr>
            <tr>
         <td>M. rotundata </td>
      </tr>
          <tr>
         <td>D. melanogastor</td>
      </tr>
      <tr>
         <td rowspan="16"> Protein family and domain assignments to proteins from InterPro</td>
         <td>A. dorsata</td>
         <td rowspan="16"> InterPro Version 61</td>
         <td rowspan="16">Mitchell et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25428371">25428371</a></td>
         <td rowspan="16"><a href="ftp://ftp.ebi.ac.uk/pub/databases/interpro/61.0/">InterPro ftp</a></td>
      <tr>
         <td>A. echinatior</td>
      </tr>
      <tr>
         <td>A. mellifera</td>
      </tr>
      <tr>
         <td>B. impatiens</td>
      </tr>
      <tr>
         <td>B. terrestris</td>
      </tr>
      <tr>
         <td>C. floridanus</td>
      </tr>
      <tr>
         <td>H. saltator</td>
      </tr>
      <tr>
         <td>L. humile</td>
      </tr>
      <tr>
         <td>P. barbatus</td>
      </tr>
      <tr>
         <td>N. vitripennis</td>
      </tr>
      <tr>
         <td>S. invicta </td>
      </tr>
            <tr>
         <td>C. biroi </td>
      </tr>
            <tr>
         <td>D. novaeangliae </td>
      </tr>
            <tr>
         <td>A. florea</td>
      </tr>
            <tr>
         <td>M. rotundata </td>
      </tr>
          <tr>
         <td>D. melanogastor</td>
      </tr>

      <tr>
        <td rowspan="16" class="leftcol"><h2>Gene Ontology</h2> </td>
        <td rowspan="16">GO Annotations</td>
        <td>A. dorsata</td>
         <td rowspan="16">UniProt Release 2015_08</td>
        <td rowspan="16"><p>UniProt Consortium - PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25348405">25348405</a></p>
         <p>Gene Ontology Consortium - PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25428369">25428369</a></p>
        </td>
        <td rowspan="16"><a href="ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/">UniProt FTP</a></td>
      </tr>
       <tr>
         <td>A. echinatior</td>
      </tr>
      <tr>
         <td>A. mellifera</td>
      </tr>
      <tr>
         <td>B. impatiens</td>
      </tr>
      <tr>
         <td>B. terrestris</td>
      </tr>
      <tr>
         <td>C. floridanus</td>
      </tr>
      <tr>
         <td>H. saltator</td>
      </tr>
      <tr>
         <td>L. humile</td>
      </tr>
      <tr>
         <td>P. barbatus</td>
      </tr>
      <tr>
         <td>N. vitripennis</td>
      </tr>
      <tr>
         <td>S. invicta </td>
      </tr>
            <tr>
         <td>C. biroi </td>
      </tr>
            <tr>
         <td>D. novaeangliae </td>
      </tr>
            <tr>
         <td>A. florea</td>
      </tr>
            <tr>
         <td>M. rotundata </td>
      </tr>
          <tr>
         <td>D. melanogastor</td>
      </tr>

      <tr>
         <td class="leftcol">
            <p>
            <h2>Expression</h2>
            </p>
         </td>
         <td>RNA-seq gene expression computed on reference gene set OGSv3.2</td>
         <td>A. mellifera</td>
         <td>NCBI-SRA-Sept 2014,  HGD</td>
         <td>Kodama et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22009675">22009675</a></td>
         <td><a href="http://www.ncbi.nlm.nih.gov/sra/?term=apis+mellifera">NCBI SRA</a></td>
      </tr>
      <tr>
         <td class="leftcol" rowspan="21"><h2>Genome Assembly</h2></td>
         <td rowspan="21">Chromosome Assembly</td>
         <td>A. dorsata</td>
         <td>Ador_1.3(GCF_000469605.1)</td>
         <td>Suen et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21347285">21347285</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_dorsata/latest_assembly_versions/GCF_000469605.1_Apis_dorsata_1.3/">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>A. echinatior</td>
         <td>Aech_3.9 (GCF_000204515.1)</td>
         <td>Nygard et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21719571">21719571</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Acromyrmex_echinatior/latest_assembly_versions/GCF_000204515.1_Aech_3.9">NCBI ftp</a></td>
      </tr>
      <tr>
         <td> A. mellifera</td>
         <td>Amel_4.5 (GCF_000002195.4)</td>
         <td>Elsik et al PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24479613">24479613</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_mellifera/latest_assembly_versions/GCF_000002195.4_Amel_4.5">NCBI ftp</a></td>
      </tr>
      <tr>
         <td> B. impatiens</td>
         <td>BIMP_2.0 (GCF_000188095.1)</td>
         <td>Sadd et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25908251<br/>&nbsp;">25908251<br/>&nbsp;</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_impatiens/latest_assembly_versions/GCF_000188095.1_BIMP_2.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>B.   terrestris</td>
         <td>Bter_1.0 (GCF_000214255.1)</td>
         <td>Sadd et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25908251<br/>&nbsp;">25908251<br/>&nbsp;</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Bombus_terrestris/latest_assembly_versions/GCF_000214255.1_Bter_1.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>C.   floridanus</td>
         <td>CamFlo_1.0 (GCF_000147175.1)</td>
         <td>Bonasio et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20798317">20798317</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Camponotus_floridanus/latest_assembly_versions/GCF_000147175.1_CamFlo_1.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>C.   obscurior</td>
         <td>Cobs_1.4</td>
         <td>Schrader et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25510865<br/>&nbsp;">25510865<br/>&nbsp;</a></td>
         <td>               <a href="http://www.hymenopteragenome.org/cardiocondyla/?q=genome_consortium_datasets">HGD Ant Genomes</a></td>
      </tr>
      <tr>
         <td>H.   saltator</td>
         <td>HarSal_1.0 (GCF_000147195.1)</td>
         <td>Bonasio et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20798317">20798317</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Harpegnathos_saltator/latest_assembly_versions/GCF_000147195.1_HarSal_1.0">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>L.   albipes</td>
         <td>Lalb_v2</td>
         <td>Kocher et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24359881">24359881</a></td>
         <td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets">HGD BeeBase</a></td>
      </tr>
      <tr>
         <td>L.   humile</td>
         <td>Lhum_UMD_V04 (GCF_000217595.1)</td>
         <td>Smith et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21282631">21282631</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Linepithema_humile/latest_assembly_versions/GCF_000217595.1_Lhum_UMD_V04">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>N. vitripennis</td>
         <td>Nvit_2.1 (GCF_000002325.3)</td>
         <td>Werren et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20075255<br/>&nbsp;">20075255<br/>&nbsp;</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Nasonia_vitripennis/latest_assembly_versions/GCF_000002325.3_Nvit_2.1">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>P.   barbatus</td>
         <td>Pbar_UMD_V03 (GCF_000187915.1)</td>
         <td>Smith et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21282651">21282651</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Pogonomyrmex_barbatus/latest_assembly_versions/GCF_000187915.1_Pbar_UMD_V03">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>S.   invicta</td>
         <td>Si_gnG (GCF_000188075.1)</td>
         <td>Wurm et al  PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21282665<br/>&nbsp;">21282665<br/>&nbsp;</a></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Solenopsis_invicta/latest_assembly_versions/GCF_000188075.1_Si_gnG">NCBI ftp</a></td>
      </tr>
      <tr>
         <td>W.   auropunctata</td>
         <td>wasmannia.A_1.0(GCF_000956235.1)<br/>&nbsp;</td>
         <td></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Wasmannia_auropunctata/latest_assembly_versions/GCF_000956235.1_wasmannia.A_1.0">NCBI ftp</a></td>
      </tr>
            <tr>
         <td>A. florea</td>
         <td>Aflo_1.0(GCF_000184785.2)<br/>&nbsp;</td>
         <td></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Apis_florea/latest_assembly_versions/GCF_000184785.2_Aflo_1.0">NCBI ftp</a></td>
      </tr>
            <tr>
         <td>C. biroi</td>
         <td>armyant.OGS.V1.8.6(GCF_000611835.1)<br/>&nbsp;</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Cerapachys_biroi/latest_assembly_versions/GCF_000611835.1_CerBir1.0">NCBI ftp</a></td>
         <td></td>
      </tr>
            <tr>
         <td>D. novaeangliae</td>
         <td>ASM127255v1(GCF_001272555.1)<br/>&nbsp;</td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Dufourea_novaeangliae/latest_assembly_versions/GCF_001272555.1_ASM127255v1">NCBI ftp</a></td>
          <td></td>
      </tr>
           <tr>
         <td>E. mexicana</td>
         <td>emex_1.1<br/>&nbsp;</td>
          <td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets">HGD BeeBase</a></td>
          <td></td>
      </tr>
            <tr>
         <td>M.   rotundata</td>
         <td>mrot_1.0(GCF_000220905.1)<br/>&nbsp;</td>
         <td></td>
         <td><a href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/invertebrate/Megachile_rotundata/latest_assembly_versions/GCF_000220905.1_MROT_1.0">NCBI ftp</a></td>
      </tr>
            <tr>
         <td>M. quadrifasciata</td>
         <td>mqua_1.1<br/>&nbsp;</td>
          <td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets">HGD BeeBase</a></td>
         <td></td>
      </tr>
             <tr>
         <td>H. laboriosa</td>
         <td>hlab_1.2<br/>&nbsp;</td>
          <td><a href="http://hymenopteragenome.org/beebase/?q=consortium_datasets">HGD BeeBase</a></td>
          <td></td>
      </tr>
      <tr>
         <td class="leftcol" rowspan="14"><h2>Publications</h2></td>
         <td rowspan="14"> Gene versus publications</td>
         <td>A. dorsata</td>
         <td rowspan="14"> NCBI PubMed - Dec 2014 </td>
         <td rowspan="14">    NCBI Resource Coordinators PubMed: <a href="http://www.ncbi.nlm.nih.gov/pubmed/?term= 25398906"> 25398906</a></td>
         <td rowspan="14"><a href="ftp://ftp.ncbi.nlm.nih.gov/gene/DATA/">NCBI FTP</a></td>
      </tr>
            <tr>
         <td>A. mellifera</td>
      </tr>
      <tr>
         <td>A. echinatior</td>
      </tr>
      <tr>
         <td>A. florea</td>
      </tr>
      <tr>
         <td>B. impatiens</td>
      </tr>
      <tr>
         <td>B. terrestris</td>
      </tr>
      <tr>
         <td>C. floridanus</td>
      </tr>
      <tr>
         <td>H. saltator</td>
      </tr>
      <tr>
         <td>L. humile</td>
      </tr>
      <tr>
         <td>N. vitripennis</td>
      </tr>
      <tr>
         <td>P. barbatus</td>
      </tr>
      <tr>
         <td>S. invicta</td>
      </tr>
      <tr>
         <td>D. melanogastor</td>
      </tr>
              <tr>
         <td>M. rotundata</td>
      </tr>
   <tr>
    
     <tr>
    <td class="leftcol" rowspan="3"><p><h2>Pathways</h2></p></td>
   
    <td> Pathway information inferred through orthologues from curated human pathways</td>
              <td>
      <p>D. melanogastor</p>
    </td>
     <td> Reactome - version 59, January 2017</td>
    <td> Croft et al - PubMed <a href=http://www.ncbi.nlm.nih.gov/pubmed/?term=24243840>24243840</a></td>
    <td> <a href="http://www.reactome.org/download/current/">Reactome Download</a></td>
  </tr>
  <tr>
    <td>Pathway information</td>
          <td>
      <p>D. melanogastor</p>
    </td>
    <td>Fly Reactome</td>
     <td></td>
    <td><a href="http://fly.reactome.org/">Flyreactome</a>
  </tr>
    <tr>
    <td>Pathway information</td>
       <td>
            <p>A. mellifera</p>
            <p>N. vitripennis</p>
             <p>D. mellifera</p>     
       </td>   
        
 
    <td>KEGG</td>
    <td>Kanehisa M et al - PubMed <a href="http://www.ncbi.nlm.nih.gov/pubmed/10592173">10592173</a></td>
    <td><a href="http://www.genome.jp/kegg/">Kegg</a>
  </tr>




      <td class="leftcol">
            <p>
            <h2>Variant</h2>
            </p>
         </td>
         <td>dbSNP data</td>
         <td>A. mellifera</td>
         <td>dbSNP Build ID=127</td>
         <td></td>
         <td><a href="ftp://ftp.ncbi.nih.gov/snp/organisms/bee_7460/">NCBI dbsnp</a></td>
      </tr>
      <tr>
     <tr>
     <td rowspan="2"  class="leftcol"><p><h2>Interactions</h2></p></td>
          <td>Interactions  </td>
    <td> 
         <p>D. melanogastor</p>
    
    </td>   
    <td> BioGRID - Version 3.4.144 </td>
    <td> Chatr-Aryamontri et al - PubMed <a href=http://www.ncbi.nlm.nih.gov/pubmed/?term=25428363>25428363</a></td>
    <td> <a href="http://thebiogrid.org/download.php">BioGRID Download</a></td>
  </tr>
     <tr>
    <td>Interactions  </td>
    <td> 
         <p>D. melanogastor</p>
    
    </td>
    <td> IntAct Release 203 </td>
    <td> Hermjakob H et al - PubMed <a href=http://www.ncbi.nlm.nih.gov/pubmed/14681455>14681455</a></td>
    <td> <a href="ftp://ftp.ebi.ac.uk/pub/databases/IntAct/current/">IntAct FTP</a></td>
  </tr>    

  
   </table>
   <div class="body"></div>
</div>
<!-- /dataCategories -->
