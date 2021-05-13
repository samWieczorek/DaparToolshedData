#' @title xxxxxx
#' 
#' @description xxx
#' 
#' @return xxx 
#' 
#' @author Enora Fremy, Samuel Wieczorek
#' 
#' @importFrom DAPAR2 createQFeatures
#' @importFrom utils read.table
#' 
#' @export
#' 

create_Exp1_R25_prot <- function(){
data.file <- system.file("extdata", "Exp1_R25_prot.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp1_R25.txt", package="DAPARdata2")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)


Exp1_R25_prot <- DAPAR2::createQFeatures(data = data, 
                                 sample = sample, 
                                 indExpData = c(49:54), 
                                 keyId = "Majority_protein_IDs", 
                                 indexForMetacell = 36:41,
                                 logTransform=TRUE, 
                                 forceNA=TRUE,
                                 typeOfData = "protein",
                                 parentProtId= NULL,
                                 analysis='foo',
                                 processes = NULL,
                                 pipelineType = NULL,
                                 software = 'maxquant')
save(Exp1_R25_prot, file='data/Exp1_R25_prot.RData', compress='xz')
saveRDS(Exp1_R25_prot, file = 'inst/extdata/Exp1_R25_prot.ft')
}