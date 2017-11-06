This data set includes 300 nuclei from the data set described below. These nuclei include 250 NeuN+ (neuronal) and 50 NeuN- (non-neuronal) nuclei dissected from Layer 5 of human neocortex (middle temporal gyrus). The full data set can be downloaded from the Allen Institute Cell Types Database: http://celltypes.brain-map.org/download.

=================================
Human MTG
=================================

RNA sequencing data of single nuclei isolated from human middle temporal gyrus cortical area (MTG).

The data set includes 15928 single nuclei collected from six cortical layers of MTG.

The sequencing results were aligned and aggregated at the gene level using the RSEM (QC metrics only) and STAR algorithms, and counts were calculated.

For more details, please see the Documentation tab in the Cell Types web application.


Gene expression data matrices
	exons_table.csv
		Contains the (row, column) matrix of read counts obtained for each (gene, nucleus) based on alignment to the transcriptome (GRCh38.p2).
		The first row contains the unique identifiers of the RNA-seq profiles of the nuclei (exp_component_name)
		The first column contains the gene unique identifiers (gene)
	introns_table.csv
		Contains the (row, column) matrix of read counts obtained for each (gene, nucleus) based on alignment to introns.
		The first row contains the unique identifiers of the RNA-seq profiles of the nuclei (exp_component_name)
		The first column contains the gene unique identifiers (gene)

		
		
Sample information (columns-nuclei.csv)
	exp_component_name
		Unique sample identifier
	alignment_id
		LIMS alignment job
	donor_id
		Donor from which the nuclei were obtained
	gender
		Donor sex
	organism
		Donor species
	sampling_region
		Brain region targeted for nucleus sampling
	roi
		Brain subregion targeted for nucleus sampling
	facs_population_plan
	sample_type
		Sample type
	facs_well
		FACS well
	facs_container
		FACS container unique identifier
	rna_amplification_set
		Amplificaiton plate
	rna_amplification
		Amplificaiton well
	percent_cdna_longer_than_400bp
		Percentage of cDNA longer than 400 base pairs
	amplified_quantity_ng
		Amplificaiton cDNA yield in ng
	library_prep_set
		Library plate
	library_prep
		Library well
	avg_size_bp
		Average bp size of Library (Fragment Analyzer™ Automated CE)
	quantification_fmol
		Library yield in fmol
	batch_sent_for_sequencing
		Sequencing Batch
	tube_sent_for_sequencing
		Sequencing Lane
	total_reads
		Total number of sequencing reads
	rsem_reads_aligned_mRNA_gDNA
		Reads aligned to mRNA or to introns (RSEM)
	rsem_percent_reads_aligned_to_mrna
		% reads aligned to mRNA (RSEM)
	rsem_percent_reads_aligned_to_genome_only
		% reads aligned to introns (RSEM)
	rsem_percent_reads_aligned_total
		% reads aligned (RSEM)
	percent_reads_aligned_to_exons
		% reads aligned to mRNA (STAR)
	percent_reads_aligned_to_rrna
		% reads aligned to rRNA (STAR)
	percent_reads_aligned_to_trna
		% reads aligned to tRNA (STAR)
	percent_reads_aligned_to_other_ncrna
		% reads aligned to other non-coding RNA (STAR)
	percent_reads_aligned_to_mt_exons
		% reads aligned to mitochondrial RNA (STAR)
	percent_reads_aligned_to_mt_rrna
		% reads aligned to mitochondrial rRNA (STAR)
	percent_reads_aligned_to_mt_trna
		% reads aligned to mitochondrial tRNA (STAR)
	percent_reads_aligned_to_mt_other_ncrna
		% reads aligned to mitochondrial other non-coding RNA (STAR)
	percent_reads_aligned_intron
		% reads aligned to introns (STAR)
	percent_reads_aligned_to_ecoli
		% reads aligned to E. coli (STAR)
	percent_reads_aligned_to_synthetic_constructs
		% reads aligned to ERCC synthetic mRNA (STAR)
	percent_reads_aligned_total
		% reads aligned total (STAR)
	percent_unique_reads
		% unique reads (STAR)
	complexity_aatt
		Dinucleotide odds ratio (PRINSEQ)
	complexity_acgt
		Dinucleotide odds ratio (PRINSEQ)
	complexity_agct
		Dinucleotide odds ratio (PRINSEQ)
	complexity_at
		Dinucleotide odds ratio (PRINSEQ)
	complexity_catg
		Dinucleotide odds ratio (PRINSEQ)
	complexity_ccgg
		Dinucleotide odds ratio (PRINSEQ)
	complexity_cg
		Dinucleotide odds ratio (PRINSEQ)
	complexity_gatc
		Dinucleotide odds ratio (PRINSEQ)
	complexity_gc
		Dinucleotide odds ratio (PRINSEQ)
	complexity_ta
		Dinucleotide odds ratio (PRINSEQ)
	cpm>0_gene_count
		# of genes with CPM values greater than 0
	cpm>1_gene_count
		# of genes with CPM values greater than 1
	cpm>4_gene_count
		# of genes with CPM values greater than 4
	cpm>8_gene_count
		# of genes with CPM values greater than 8
	cpm>16_gene_count
		# of genes with CPM values greater than 16
	cpm>32_gene_count
		# of genes with CPM values greater than 32
	cpm>64_gene_count
		# of genes with CPM values greater than 64


		
Gene information (rows-genes.csv)
	gene
		Gene symbol
	chromosome
		Chromosome location of gene
	entrez_id
		NCBI Entrez ID
	gene_name
		Gene name
	mouse_homologenes
		Mouse ortholog
