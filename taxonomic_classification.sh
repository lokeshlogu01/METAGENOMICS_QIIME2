#!/bin/bash
# Taxonomic Classification with QIIME2

# Classify the representative sequences
qiime feature-classifier classify-sklearn \
  --i-classifier data/classifier.qza \
  --i-reads data/rep-seqs.qza \
  --o-classification data/taxonomy.qza

# Summarize the taxonomy data
qiime metadata tabulate \
  --m-input-file data/taxonomy.qza \
  --o-visualization data/taxonomy.qzv
