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

create_Exp1_R2_pept <- function(){
data.file <- system.file("extdata", "Exp1_R2_pept.txt", package="DaparToolshedData")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp1_R2.txt", package="DaparToolshedData")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp1_R2_pept <- createQFeatures(data = data, 
                                sample = sample, 
                                indQData = 27:32, 
                                keyId = 'Sequence', 
                                indQMetadata = 14:19,
                                typeDataset = "peptide",
                                parentProtId= "Protein_group_IDs",
                                analysis='foo',
                                processes = NULL,
                                typePipeline = NULL,
                                software = 'maxquant')

 save(Exp1_R2_pept, file='data/Exp1_R2_pept.RData')
}