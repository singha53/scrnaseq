DOCKERHUB_USERNAME=singha53
IMAGE_VERSION=v0.1
IMAGE_NAME=scrnaseq

# build docker image
build:
	docker build -t $(DOCKERHUB_USERNAME)/$(IMAGE_NAME):$(IMAGE_VERSION) .

# run interactive docker image
run:
	docker run -it -v /Users/asingh/Documents/cbl/methods/scrnaseq:/home $(DOCKERHUB_USERNAME)/$(IMAGE_NAME):$(IMAGE_VERSION)

# push docker image to dockerhub
push:
	docker push $(DOCKERHUB_USERNAME)/$(IMAGE_NAME):$(IMAGE_VERSION)

<<<<<<< HEAD
=======
sockeye_pull:
	module load singularity; \
	singularity pull --name scrnaseq.sif docker://$(DOCKERHUB_USERNAME)/$(IMAGE_NAME):$(IMAGE_VERSION)
>>>>>>> aad862195c1e75bdf75b149b43ff1e50c4381a7e
