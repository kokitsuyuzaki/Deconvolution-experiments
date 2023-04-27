source("src/Functions.R")

# Parameter
infile <- commandArgs(trailingOnly=TRUE)[1]
outfile <- commandArgs(trailingOnly=TRUE)[2]

# Loading
data <- read_excel("data/fly/tensor_decomposition\ update2.xlsx", sheet=1)

row.names <- unlist(data[4:nrow(data), 1])

col.names <- c(
	paste0("naive_normal", 1:7),
	paste0("naive_claustrophobia", 1:9),
	paste0("shock_highly_claustrophobia", 1:6),
	paste0("shock_mildly_claustrophobia", 1:8),
	paste0("shock_no_claustrophobia", 1:9))

out <- as.numeric(unlist(data[4:nrow(data), 4:ncol(data)]))
dim(out) <- c(length(row.names), length(col.names))
rownames(out) <- row.names
colnames(out) <- col.names

# Save
write.table(out, outfile, quote=FALSE)
