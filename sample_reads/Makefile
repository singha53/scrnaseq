install:
	git clone https://github.com/lh3/seqtk.git; cd seqtk; make
	
sample:
	mkdir -p R3 R4 R15 R16
	seqtk/seqtk sample -s11 GEX-R15-AS-12162022_S3_L001_R1_001.fastq.gz 10000 > R15/rat15_R1.fq
	seqtk/seqtk sample -s11 GEX-R15-AS-12162022_S3_L001_R2_001.fastq.gz 10000 > R15/rat15_R2.fq
	seqtk/seqtk sample -s11 GEX-R16-AS-12162022_S4_L001_R1_001.fastq.gz 10000 > R16/rat16_R1.fq
	seqtk/seqtk sample -s11 GEX-R16-AS-12162022_S4_L001_R2_001.fastq.gz 10000 > R16/rat16_R2.fq
	seqtk/seqtk sample -s11 GEX-R3-AS-12162022_S1_L001_R1_001.fastq.gz 10000 > R3/rat3_R1.fq
	seqtk/seqtk sample -s11 GEX-R3-AS-12162022_S1_L001_R2_001.fastq.gz 10000 > R3/rat3_R2.fq
	seqtk/seqtk sample -s11 GEX-R4-AS-12162022_S2_L001_R1_001.fastq.gz 10000 > R4/rat4_R1.fq
	seqtk/seqtk sample -s11 GEX-R4-AS-12162022_S2_L001_R2_001.fastq.gz 10000 > R4/rat4_R2.fq

data:
	mv R3/ R4/ R15/ R16/ ../data/