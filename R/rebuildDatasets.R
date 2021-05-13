#' @title xxxxxx
#' 
#' @description xxx
#' 
#' @return xxx 
#' 
#' @author Enora Fremy, Samuel Wieczorek
#' 
#' @import DAPAR2
#' @import svMisc
#' 

rebuild_all_datasets <- function(){
  
ll <- DAPARdata2()$results[,'Item']
n <- length(ll)
for (i in 1:n){
  progress(100*i/n, progress.bar=TRUE)
  cat(paste0('Building dataset ', ll[i], ' ...\n'))
  do.call(paste0('create_', ll[i]), list())
  flush.console()
  }

}

