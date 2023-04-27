source("src/Functions.R")

# Parameter
infile <- commandArgs(trailingOnly=TRUE)[1]
outfile <- commandArgs(trailingOnly=TRUE)[2]

# Loading
data <- H5Fopen("data/fly/s_fca_biohub_head_10x.h5ad")

# Preprocess
out <- as.matrix(data$raw.X)
row.names <- data$var$index
rownames(out) <- row.names

# Save
write.table(t(col.names[1:100]), outfile,
    quote=FALSE, col.names=FALSE)
write.table(out[1:1000,1:100], outfile,
    quote=FALSE, append=TRUE)
