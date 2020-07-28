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

create_Exp2_R2_prot <- function(){
data.file <- system.file("extdata", "Exp2_R2_prot.txt", package="DAPARdata2")
data <- read.table(data.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

sample.file <- system.file("extdata", "samples_Exp2_R2.txt", package="DAPARdata2")
sample <- read.table(sample.file, header=TRUE, sep="\t", as.is=TRUE, stringsAsFactors = FALSE)

Exp2_R2_prot <- DAPAR2::createQFeatures(data = data, 
                                sample = sample, 
                                indExpData = c(1:6), 
                                keyId = "Majority_protein_IDs", 
                                namesOrigin = c(37:42),
                                logTransform=TRUE, 
                                forceNA=TRUE,
                                typeOfData = "protein",
                                parentProtId= NULL)

save(Exp2_R2_prot, file='Exp2_R2_prot.RData', compress='xz')
saveRDS(get(Exp2_R2_prot), file=paste0(Exp2_R2_prot, '.ft'))
return(Exp2_R2_prot)

}