# custom ref: https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/using/tutorial_mr
fasta:
	wget https://ftp.ensembl.org/pub/release-110/fasta/rattus_norvegicus/dna/Rattus_norvegicus.mRatBN7.2.dna.toplevel.fa.gz
	gunzip Rattus_norvegicus.mRatBN7.2.dna.toplevel.fa.gz

gtf:
	wget https://ftp.ensembl.org/pub/release-110/gtf/rattus_norvegicus/Rattus_norvegicus.mRatBN7.2.110.gtf.gz
	gunzip Rattus_norvegicus.mRatBN7.2.110.gtf.gz
	
mkgtf:
	apptainer run -B /project/st-singha53-1/singha53/scrnaseq/ /project/st-singha53-1/singha53/scrnaseq/scrnaseq.sif cellranger mkgtf \
		/project/st-singha53-1/singha53/scrnaseq/ref/Rattus_norvegicus.mRatBN7.2.110.gtf \
		Rattus_norvegicus.mRatBN7.2.filtered.gtf \
		--attribute=gene_biotype:protein_coding

mkref:
	cellranger mkref \
	  --genome=Rattus_norvegicus.mRatBN7.2 \
	  --fasta=Rattus_norvegicus.mRatBN7.2.dna.toplevel.fa \
	  --genes=Rattus_norvegicus.mRatBN7.2.filtered.gtf