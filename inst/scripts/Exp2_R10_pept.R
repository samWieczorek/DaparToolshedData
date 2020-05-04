
library("Features")
library("DAPAR2")

data.file <- system.file("extdata", "Exp2_R10_pept.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp2_R10.txt", package="DAPARdata2")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp2_R10_pept <- createFeatures(data = data, 
                                sample = sample, 
                                indExpData = c(1:6), 
                                keyId = 'Sequence', 
                                namesOrigin = colnames(data)[43:48],
                                logTransform=TRUE, 
                                forceNA=TRUE,
                                typeOfData = "peptide",
                                parentProtId= "Protein_group_IDs")
