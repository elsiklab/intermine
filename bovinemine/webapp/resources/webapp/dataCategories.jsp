<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>


<!-- dataCategories -->
<html:xhtml/>

<div class="body">
    <im:boxarea title="Data" stylename="plainbox"><p><fmt:message key="dataCategories.intro"/></p></im:boxarea>

    <table cellpadding="0" cellspacing="0" border="0" class="dbsources">
        <tr>
            <th>Data Category</th>
            <th>Organism</th>
            <th>Data</th>
            <th>Source</th>
            <th>PubMed</th>
            <th>Note</th>
        </tr>
        <tr><td rowspan="3" class="leftcol">
            <h2><p>Genes</p></h2></td>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. hircus</i></p>
                <p><i>O. aries</i></p>
            </td>
            <td>NCBI Genes (RefSeq)</td>
            <td>NCBI Annotation Release 105</td>
            <td><p>Pruitt et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24259432">24259432</a></p></td>
            <td> <a target="_blank" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Bos_taurus/latest_assembly_versions/GCF_000003055.6_Bos_taurus_UMD_3.1.1">NCBI FTP</a></td>
        </tr>
        <tr>
            <td> <i>B. taurus</i> </td>
            <td> Official Gene Set v2.0  </td>
            <td> Bovine Genome Database</td>
            <td><p>Bovine Genome Sequencing and Analysis Consortium - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19390049">19390049</a></p><p>Reese et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=21092105">21092105</a></p></td>
            <td><a target="_blank" href="http://bovinegenome.org/?q=node/61">BGD Download</a></td>
        </tr>
        <tr>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>O. aries</i></p>
            </td>
            <td> Ensembl Genes </td>
            <td>Ensembl Release 89</td>
            <td>Cunningham et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25352552">25352552</a></td>
            <td><a target="_blank" href="ftp://ftp.ensembl.org/pub/release-89/gtf/bos_taurus/">Ensembl Download</a></td>
        </tr>
        <tr>
            <td rowspan="4"  class="leftcol"><p><h2>Homology</h2></p></td>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. familiaris</i></p>
                <p><i>C. hircus</i></p>
                <p><i>E. caballus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
                <p><i>S. scrofa</i></p>
            </td>
            <td>Orthologue and paralogue relationships</td>
            <td>OrthoDB - Version 9.1</td>
            <td>Zdobnov et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/27899580">27899580</a></td>
            <td><a target="_blank" href="ftp://cegg.unige.ch/OrthoDB9/">OrthoDB Download</a></td>
        </tr>
        <tr>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. familiaris</i></p>
                <p><i>E. caballus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
                <p><i>S. scrofa</i></p>
            </td>
            <td>Orthologue and paralogue relationships</td>
            <td>Treefam - release 9.0</td>
            <td>Schreiber et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24194607">24194607</a></td>
            <td><a target="_blank" href="http://www.treefam.org/download">TreeFam Download</a></td>
        </tr>
        <tr>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. familiaris</i></p>
                <p><i>E. caballus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
                <p><i>S. scrofa</i></p>
            </td>
            <td>Orthologue and paralogue relationships</td>
            <td>Ensembl Compara</td>
            <td>Vilella et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19029536">19029536</a> </td>
            <td><a target="_blank" href="http://useast.ensembl.org/biomart/martview/">Ensembl BioMart<a/></td>
        </tr>
        <tr>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. familiaris</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
                <p><i>S. scrofa</i></p>
            </td>
            <td>Orthologue and paralogue relationships</td>
            <td>HomoloGene build 68</td>
            <td>NCBI Resource Coordinators - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25398906">25398906</a></td>
            <td><a target="_blank" href="ftp://ftp.ncbi.nih.gov/pub/HomoloGene/build68/">NCBI FTP</a></td>
        </tr>
        <tr>
            <td rowspan="2"  class="leftcol"><p><h2>Proteins</h2></p></td>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. hircus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
            </td>
            <td> Protein annotation</td>
            <td> UniProt - Release 2017_08</td>
            <td> UniProt Consortium - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25348405">25348405</a></td>
            <td> <a target="_blank" href="ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase/complete/">UniProt FTP</a></td>
        </tr>
        <tr>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. hircus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
            </td>
            <td> Protein domains</td>
            <td> InterPro Version 64.0  </td>
            <td> Mitchell et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25428371">25428371</a></td>
            <td> <a target="_blank" href="ftp://ftp.ebi.ac.uk/pub/databases/interpro/63.0/">InterPro FTP</a></td>
        </tr>
        <tr>
            <td rowspan="2"  class="leftcol"><p><h2>Interactions</h2></p></td>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>R. norvegicus</i></p>
            </td>
            <td> Interactions</td>
            <td> BioGRID - Version 3.4.151</td>
            <td> Chatr-Aryamontri et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25428363">25428363</a></td>
            <td> <a target="_blank" href="http://thebiogrid.org/download.php">BioGRID Download</a></td>
        </tr>
        <tr>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. hircus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
            </td>
            <td> Interactions</td>
            <td> IntAct 2017-06-03 release</td>
            <td> Hermjakob H et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/14681455">14681455</a></td>
            <td> <a target="_blank" href="ftp://ftp.ebi.ac.uk/pub/databases/IntAct/current/">IntAct FTP</a></td>
        </tr>
        <tr>
            <td rowspan="11" class="leftcol"><p> <h2>Ontologies</h2></p></td>
            <td></td>
            <td>Uber Anatomy Ontology (UBERON)</td>
            <td>Release Date: 04/25/2017</td>
            <td><p>Mungall et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=22293552">22293552</a></p></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/UBERON">UBERON</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Mouse Adult Gross Anatomy Ontology</td>
            <td>Release Date: 12/22/2016</td>
            <td></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/MA">MA</a></td>
        </tr>
        <tr>
            <td></td>
            <td>BRENDA Tissue Ontology</td>
            <td>Release Date: 08/04/2016</td>
            <td><p>Gremse et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=21030441">21030441</a></p></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/BTO">BTO</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Clinical Measurement Ontology</td>
            <td>Release Date: 04/21/2017</td>
            <td><p>Shimoyama et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/22654893">22654893</a></p></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/CMO">CMO</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Livestock Breed Ontology</td>
            <td>Release Date: 04/12/2017</td>
            <td></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/LBO">LBO</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Livestock Product Trait Ontology</td>
            <td>Release Date: 03/02/2017</td>
            <td></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/PTO">PTO</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Vertebrate Trait Ontology</td>
            <td>Release Date: 03/06/2017</td>
            <td></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/VT">VT</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Evidence Ontology</td>
            <td>Release Date: 05/05/2017</td>
            <td><p>Chibucos et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=25052702">25052702</a></p></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/ECO">ECO</a></td>
        </tr>
        <tr>
            <td></td>
            <td>PSI MI Ontology</td>
            <td>Release Date: 03/24/2017</td>
            <td></td>
            <td><a target="_blank" href="http://www.obofoundry.org/ontology/mi.html">MI</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Gene Ontology</td>
            <td>Release Date: 05/17/2017</td>
            <td><p>Gene Ontology Consortium - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/27899567">27899567</a></p></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/GO">GO</a></td>
        </tr>
        <tr>
            <td></td>
            <td>Sequence Ontology</td>
            <td>Release Date: 05/17/2017</td>
            <td><p>Eilbeck et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/15892872">15892872</a></p></td>
            <td><a target="_blank" href="https://bioportal.bioontology.org/ontologies/SO">SO</a></td>
        </tr>
            <td class="leftcol"><p> <h2>Gene Ontology Annotation</h2></p></td>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. hircus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
            </td>
            <td> Gene Ontology Annotation </td>
            <td> GOA at UniProt (GOC Validation Date: 06/06/2017)</td>
            <td> <p>Huntley et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25378336">25378336</a></p><p>Gene Ontology Consortium - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25428369">25428369</a></p></td>
            <td> <a target="_blank" href="http://www.geneontology.org/page/download-annotations">GO Consortium Annotation Download</a></td>
        </tr>
        <tr>
            <td class="leftcol" rowspan="3"><p><h2>Pathways</h2></p></td>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. hircus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>O. aries</i></p>
                <p><i>R. norvegicus</i></p>
            </td>
            <td> Pathway information inferred through orthologues from curated human pathways</td>
            <td> Reactome - version 60, Apr 2017</td>
            <td> Croft et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=24243840">24243840</a></td>
            <td> <a target="_blank" href="http://www.reactome.org/download/current/">Reactome Download</a></td>
        </tr>
        <tr>
            <td>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
            </td>
            <td>Pathway information</td>
            <td>BioCyc - Version 19.5</td>
            <td>Caspi et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/26527732">26527732</a></td>
            <td><a target="_blank" href="http://biocyc.org/">BioCyc</a>
        </tr>
        <tr>
            <td>
                <p><i>B. taurus</i></p>
                <p><i>C. familiaris</i></p>
                <p><i>E. caballus</i></p>
                <p><i>H. sapiens</i></p>
                <p><i>M. musculus</i></p>
                <p><i>R. norvegicus</i></p>
                <p><i>S. scrofa</i></p>
            </td>
            <td>Pathway information</td>
            <td>KEGG</td>
            <td>Kanehisa M et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/10592173">10592173</a></td>
            <td><a target="_blank" href="http://www.genome.jp/kegg/">KEGG</a>
        </tr>
        <tr>
            <td class="leftcol"><p><h2>Publications</h2></p></td>
            <td> <i>B. taurus</i> </td>
            <td> A mapping from genes to publications</td>
            <td> NCBI PubMed</td>
            <td>NCBI Resource Coordinators - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25398906">25398906</a></td>
            <td> <a target="_blank" href="ftp://ftp.ncbi.nlm.nih.gov/gene/DATA/">NCBI FTP</a></td>
        </tr>
        <tr>
            <td class="leftcol" rowspan="5"><p><h2>Variation</h2></p></td>
            <td>
            <i>B. taurus</i>
            </td>
            <td>QTL data for Bos taurus</td>
            <td> AnimalQTLdb release 33 (Aug 2017)</td>
            <td>Hu et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=17135205">17135205</a></td>
            <td><a target="_blank" href="http://www.animalgenome.org/cgi-bin/QTLdb/BT/index">CattleQTLdb Download</a></td>
        </tr>
        <tr>
            <td><i>B. taurus</i></td>
            <td>dbSNP data for Bos taurus</td>
            <td> dbSNP v146</td>
            <td> Sherry et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=11125122">11125122</a></td>
            <td><p><a target="_blank" href="ftp://ftp.ncbi.nih.gov/snp/organisms/cow_9913/VCF/">NCBI FTP</a></p><p><i> *SNP arrays and SNP NCBI IDs*</i></p></td>
        </tr>
        <tr>
            <td><i>B. taurus</i></td>
            <td>SNP Alias Identifiers</td>
            <td> SNPchiMp v.3</td>
            <td> Nicolazzi et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=25881165">25881165</a></td>
            <td><a target="_blank" href="http://bioinformatics.tecnoparco.org/SNPchimp/">SNPchiMp</a></td>
        </tr>
        <tr>
            <td><i>B. taurus</i></td>
            <td>dbVar data for Bos taurus</td>
            <td> dbVar (May, 2017)</td>
            <td> Lappalainen et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=23193291">23193291</a></td>
            <td><a target="_blank" href="ftp://ftp.ncbi.nlm.nih.gov/pub/dbVar/data/Bos_taurus/">NCBI FTP</a></td>
        </tr>
        <tr>
            <td><i>B. taurus</i></td>
            <td>HapMap data for Bos taurus</td>
            <td> HapMap</td>
            <td> The International HapMap Consortium - <a target="_blank" href="http://www.nature.com/nature/journal/v426/n6968/abs/nature02168.html">Nature</a></td>
            <td><a target="_blank" href="http://hapmap.ncbi.nlm.nih.gov/">HapMap website</a></td>
        </tr>
        <tr>
            <td class="leftcol" rowspan="1"><p><h2>Variant Annotations</h2></p></td>
            <td><i>B. taurus</i></td>
            <td>Variant effects predicted on RefSeq and Ensembl using Ensembl Variant Effect Predictor</td>
            <td>Ensembl VEP (Release 88)</td>
            <td>McLaren et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=20562413">20562413</a></td>
            <td><a target="_blank" href="http://useast.ensembl.org/info/docs/tools/vep/index.html">Ensembl VEP</a></td>
        </tr>
        <tr>
            <td class="leftcol"><p><h2>Gene expression</h2></p></td>
            <td><p>B. taurus</p></td>
            <td>RNA-seq gene expression data from L1 Dominette 01449 and her relatives</td>
            <td> NCBI SRA </td>
            <td> Kodama et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=22009675">22009675</a></td>
            <td> <a target="_blank" href="http://www.ncbi.nlm.nih.gov/sra?term=SRP049415">NCBI SRA Project Page</a></td>
        </tr>
        <tr>
            <td class="leftcol" rowspan="4"><p><h2>Assembly</h2></p></td>
            <td><i>B. taurus</i></td>
            <td>Chromosome Assembly</td>
            <td>UMD3.1.1</td>
            <td>Zimin et al - PubMed <a target="_blank" href="http://www.ncbi.nlm.nih.gov/pubmed/?term=19393038">19393038</a></td>
            <td><a target="_blank" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/Bos_taurus/">NCBI FTP</a></td>
        </tr>
        <tr>
            <td><i>C. hircus</i></td>
            <td>Chromosome Assembly</td>
            <td>ARS1</td>
            <td><p>Bickhart et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/28263316">28263316</a></p></td>
            <td><a target="_blank" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/Capra_hircus/">NCBI FTP</a></td>
        </tr>
        <tr>
            <td><i>O. aries</i></td>
            <td>Chromosome Assembly</td>
            <td>Oar_v3.1</td>
            <td><p>Jiang et al - PubMed <a target="_blank" href="https://www.ncbi.nlm.nih.gov/pubmed/?term=24904168">24904168</a></p></td>
            <td><a target="_blank" href="ftp://ftp.ncbi.nlm.nih.gov/genomes/Ovis_aries/">NCBI FTP</a></td>
        </tr>
    </table>
</div>
<!-- /dataCategories -->

