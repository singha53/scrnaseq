#!/usr/bin/env bash

# https://home.cc.umanitoba.ca/~psgendb/doc/fastqc.help
FASTQ_FILES=$1
OUTPUT=$2

for file in $(ls $FASTQ_FILES)
do
    echo $1$file
    fastqc -t 5 $1$file -o $OUTPUT
done