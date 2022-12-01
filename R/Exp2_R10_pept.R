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

create_Exp2_R10_pept <- function(){
data.file <- system.file("extdata", "Exp2_R10_pept.txt", package="DaparToolshedData")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp2_R10.txt", package="DaparToolshedData")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp2_R10_pept <- createQFeatures(data = data, 
                                 sample = sample, 
                                 indQData = 1:6, 
                                 keyId = 'Sequence', 
                                 indQMetadata = 49:54,
                                 typeDataset = "peptide",
                                 parentProtId = "Protein_group_IDs",
                                 analysis = 'foo',
                                 processes = NULL,
                                 typePipeline = NULL,
                                 software = 'maxquant')
save(Exp2_R10_pept, file = 'data/Exp2_R10_pept.RData')
}