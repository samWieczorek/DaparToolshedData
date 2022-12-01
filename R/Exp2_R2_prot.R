#' @title xxxxxx
#' 
#' @description xxx
#' 
#' @return xxx 
#' 
#' @author Enora Fremy, Samuel Wieczorek
#' 
#' @importFrom DaparToolshed createQFeatures
#' @importFrom utils read.table
#' 
#' @export
#' 

create_Exp2_R2_prot <- function(){
data.file <- system.file("extdata", "Exp2_R2_prot.txt", package="DaparToolshedData")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp2_R2.txt", package="DaparToolshedData")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp2_R2_prot <- createQFeatures(data = data, 
                                sample = sample, 
                                indQData = 1:6, 
                                keyId = "Majority_protein_IDs", 
                                indQMetadata = 43:48,
                                typeDataset = "protein",
                                parentProtId = NULL,
                                analysis = 'foo',
                                processes = NULL,
                                typePipeline = NULL,
                                software = 'maxquant')

save(Exp2_R2_prot, file = 'data/Exp2_R2_prot.RData')

}