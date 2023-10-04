#!/usr/bin/env bash
RUN_PATH=$1
cd $RUN_PATH
for file in $(ls $RUN_PATH)
do
    SAMPLE=`basename $file`
    fastqc -t 5 ${SAMPLE} -o /scratch/st-singha53-1/singha53/scrnaseq/fastqc/
done