

library("Features")
library("DAPAR2")

data.file <- system.file("extdata", "Exp1_R25_prot.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp1_R25.txt", package="DAPARdata2")
sample <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)


Exp1_R25_prot <- createFeatures(data = data, 
                                sample = sample, 
                                indExpData = c(49:54), 
                                keyId = "Majority_protein_IDs", 
                                namesOrigin = colnames(data)[36:41],
                                logTransform=TRUE, 
                                forceNA=TRUE,
                                typeOfData = "protein",
                                parentProtId= NULL)
