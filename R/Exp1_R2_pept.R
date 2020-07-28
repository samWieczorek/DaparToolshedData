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

create_Exp1_R2_pept <- function(){
data.file <- system.file("extdata", "Exp1_R2_pept.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata2")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp1_R2_pept <- DAPAR2::createQFeatures(data = data, 
                                sample = sample, 
                                indExpData = c(27:32), 
                                keyId = 'Sequence', 
                                namesOrigin = colnames(data)[14:19],
                                logTransform=TRUE, 
                                forceNA=TRUE,
                                typeOfData = "peptide",
                                parentProtId= "Protein_group_IDs")
save(Exp1_R2_pept, file='Exp1_R2_pept.RData', compress='xz')
saveRDS(get(Exp1_R2_pept), file=paste0(Exp1_R2_pept, '.ft'))
return(Exp1_R2_pept)
}