# check if your system meets the system requirements 
# for running the cellranger pipeline
# Running Cell Ranger requires at least 8 CPUs, preferably 16, 
# and at least 64GB of RAM, preferably 128. We have 64 CPU available.
cellranger_sitecheck:
	cellranger sitecheck > sitecheck.txt

ref:
	cd .. \
  mkdir ref \
  cd ref \
  wget "https://cf.10xgenomics.com/supp/cell-exp/refdata-gex-GRCh38-2020-A.tar.gz"

cellranger:
