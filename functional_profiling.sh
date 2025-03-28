#!/bin/bash
# Functional Profiling with PICRUSt2

# Import the feature table and representative sequences
qiime tools import --type 'FeatureData[Sequence]' \
  --input-path data/rep-seqs.fasta \
  --output-path data/rep-seqs.qza

qiime tools import --type 'FeatureTable[Frequency]' \
  --input-path data/table.biom \
  --output-path data/table.qza

# PICRUSt2 prediction step
qiime picrust2 predict \
  --i-table data/table.qza \
  --i-sequences data/rep-seqs.qza \
  --p-cluster-columns true \
  --p-threads 4 \
  --o-pathways data/pathways.qza \
  --o-predicted-metagenome data/predicted_metagenome.qza

# Functional annotation
qiime picrust2 summarize \
  --i-table data/predicted_metagenome.qza \
  --o-visualization data/predicted_metagenome.qzv
