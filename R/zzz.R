#' @importFrom utils packageVersion
.onAttach <- function(libname, pkgname) {
msg <- paste0("\nThis is DAPARdata2 version ",
                utils::packageVersion("DAPARdata2"), ".\n",
                "Use 'DAPARdata2()' to list available data sets.")
packageStartupMessage(msg)  
}



#' This function lists the datasets available in DAPARdata2 package
#'
#' @title Available datasets in the DAPARdata2 package
#' @return A list of datasets
#' @examples
#' DAPARdata2()
#' @importFrom utils data
#' @export
#' 
DAPARdata2 <- function() {
data(package = "DAPARdata2")}
