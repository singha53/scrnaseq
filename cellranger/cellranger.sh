#!/bin/sh

files=$(ls /project/st-singha53-1/datasets/fentanyl/scrnaseq)
rats=(R15 R16 R3 R4)

for key in ${!rats[@]}; do
  printf -- '%s\n' "${files[@]}" | grep ${rats[$key]} > $key.txt
done