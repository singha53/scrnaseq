IMAGE=scrnaseq

# Docker 	
build:
	docker build -t singha53/$(IMAGE):v0.1 .

run:
	docker run -it -v /Users/asingh/Documents/cbl/methods/scrnaseq:/home singha53/$(IMAGE):v0.1 

push:
	docker push singha53/$(IMAGE):v0.1

fastqc:
	mkdir -p fastqc_results
	fastqc -o fastqc_results ../data/GEX-R3-AS-12162022_S1_L001_R1_001.fastq.gz ../data/GEX-R3-AS-12162022_S1_L001_R2_001.fastq.gz