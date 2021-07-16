#' @title xxxxxx
#' 
#' @description xxx
#' 
#' @return xxx 
#' 
#' @author Enora Fremy, Samuel Wieczorek
#' 

rebuild_all_datasets <- function(){

  ll <- DAPARdata2()$results[,'Item']
  for (i in 1:length(ll)){
    cat(paste0('Building dataset ', ll[i], ' ...\n'))
    do.call(paste0('create_', ll[i]), list())
    flush.console()
  }

}

