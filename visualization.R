#!/usr/bin/Rscript
# Visualization of Results using R

library(ggplot2)
library(phyloseq)
library(dplyr)
library(ggpubr)

# Load QIIME2 outputs into R
physeq <- read_qza("data/predicted_metagenome.qza")

# Summarize the predicted metagenome data
summary(physeq)

# Create a bar plot for the functional categories
ggplot(physeq, aes(x = Category, y = Abundance, fill = Category)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Functional Category Abundance", x = "Category", y = "Abundance") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Create a heatmap for the functional profiling
heatmap_data <- as.data.frame(physeq)
ggplot(heatmap_data, aes(x = Category, y = Sample, fill = Abundance)) +
  geom_tile() +
  theme_minimal() +
  scale_fill_viridis_c() +
  labs(title = "Functional Profiling Heatmap")
