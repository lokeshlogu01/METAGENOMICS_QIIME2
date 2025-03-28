# METAGENOMICS_QIIME2
# Metagenomics Analysis Pipeline using QIIME2 & PICRUSt2

## Overview
This repository contains scripts for metagenomics analysis using **QIIME2** for microbial composition and **PICRUSt2** for functional profiling. The pipeline includes steps for **data preprocessing, quality control, taxonomic classification, and visualization** using R.

---

## Dependencies
Ensure you have the following installed:
- QIIME2 (latest version)
- PICRUSt2
- R with `phyloseq`, `ggplot2`, `vegan`, and `microbiome` packages
- Bash

---


## 5. How to Run the Pipeline
1. Clone the repository
2. Place raw sequencing data in `data/`
3. Modify `metadata.tsv` and `manifest.csv`
4. Run `bash pipeline.sh`
5. Run `Rscript visualization.R`


