
library("QFeatures")
library("DAPAR2")

data.file <- system.file("extdata", "Exp1_R2_prot.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata2")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp1_R2_prot <- createQFeatures(data = data, 
                                sample = sample, 
                                indExpData = c(49:54), 
                                keyId = "Majority_protein_IDs", 
                                namesOrigin = c(36:41),
                                logTransform=TRUE, 
                                forceNA=TRUE,
                                typeOfData = "protein",
                                parentProtId= NULL)