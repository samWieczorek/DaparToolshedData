library("Features")
library("DAPAR2")

data.file <- system.file("extdata", "Exp1_R25_pept.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp1_R25.txt", package="DAPARdata2")
sample <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

indExpData <- c(56:61)
namesOrigin <- colnames(data)[43:48]
keyId <- "Sequence"
parentId <- 'Protein_group_IDs'

Exp1_R25_pept <- createFeatures(data = data, 
                                sample = sample, 
                                indExpData, 
                                keyId, 
                                namesOrigin = c(43:48),
                                logTransform=TRUE, 
                                forceNA=TRUE,
                                typeOfData = "peptide",
                                parentProtId= "Protein_group_IDs")
