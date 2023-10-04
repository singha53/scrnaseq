# scrnaseq

## local

- create docker image and run container
```
make build
make run
```

- run fastqc in running docker container
```
cd fastqc
make fastqc
```

- push image to DockerHub
* make sure you have a dockerhub account
```
make push
```

## Sockeye

### clone repo to hpc project folder
- log into sockeye and go to project user folder

```bash
module load git
git clone https://github.com/singha53/scrnaseq
```

### pull docker image

```bash
cd fastqc
make sockeye_pull
```

