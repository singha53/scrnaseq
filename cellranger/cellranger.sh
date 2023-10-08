#!/bin/bash


# rats = ( GEX-R3-AS-12162022 GEX-R15-AS-12162022 GEX-R16-AS-12162022 GEX-R4-AS-12162022)

for rat in "GEX-R3-AS-12162022" "GEX-R15-AS-12162022" "GEX-R16-AS-12162022" "GEX-R4-AS-12162022"
do
  cellranger count --id=${rat} \
    --fastqs=../data/${rat}/ \
    --sample=${rat} \
    --transcriptome=../ref/Rattus_norvegicus_mRatBN7_2 \
    --chemistry "ARC-v1"
done

# for rat in ${rats[@]}; do
#   cellranger count --id=${rat} \
#     --fastqs=../data/${rat}/ \
#     --sample=${rat} \
#     --transcriptome=../ref/Rattus_norvegicus_mRatBN7_2 \
#     --chemistry "ARC-v1"
# done

