
library("Features")
library("DAPAR2")

data.file <- system.file("extdata", "Exp2_R2_prot.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp2_R2.txt", package="DAPARdata2")
sample <- read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp2_R2_prot <- createFeatures(data = data, 
                                 sample = sample, 
                                 indExpData = c(1:6), 
                                 keyId = "Majority_protein_IDs", 
                                 namesOrigin = c(37:42),
                                 logTransform=TRUE, 
                                 forceNA=TRUE,
                                 typeOfData = "protein",
                                 parentProtId= NULL)