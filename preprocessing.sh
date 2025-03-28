#!/bin/bash
# Preprocessing - Quality control and trimming with QIIME2

# Import data
qiime tools import --type 'SampleData[PairedEndSequencesWithQuality]' \
  --input-path data/manifest.csv \
  --output-path data/demux.qza \
  --input-format PairedEndFastqManifestPhred33

# Summarize demux data
qiime demux summarize --i-data data/demux.qza --o-visualization data/demux.qzv

# Denoising with DADA2
qiime dada2 denoise-paired --i-demultiplexed-seqs data/demux.qza \
  --p-trunc-len-f 250 --p-trunc-len-r 200 \
  --o-table data/table.qza --o-representative-sequences data/rep-seqs.qza \
  --o-denoising-stats data/denoising-stats.qza
