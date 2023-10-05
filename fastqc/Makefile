
fastqc:
	sh fastqc.sh ../data/ fastqc_results

sockeye_pull:
	module load singularity; \
	singularity pull --name scrnaseq docker://$(DOCKERHUB_USERNAME)/$(IMAGE_NAME):$(IMAGE_VERSION)

sockeye_fastqc:
	sh fastqc.sh /project/st-singha53-1/datasets/fentanyl/scrnaseq

qstat:
	qstat -u $(USER)