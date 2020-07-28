#' @title xxxxxx
#' 
#' @description xxx
#' 
#' @return xxx 
#' 
#' @author Enora Fremy, Samuel Wieczorek
#' 
#' @import DAPAR2
#' 

rebuild_all_datasets <- function(){
  
ll <- DAPARdata2()$results[,'Item']
for (i in ll){
  cat(paste0('Building dataset ', i, '\n'))
  do.call(paste0('create_', i), list())
  }

}