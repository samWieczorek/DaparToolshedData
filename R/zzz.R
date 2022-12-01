#' @importFrom utils packageVersion
.onAttach <- function(libname, pkgname) {
msg <- paste0("\nThis is DaparToolshedData version ",
                utils::packageVersion("DaparToolshedData"), ".\n",
                "Use 'DaparToolshedData()' to list available data sets.")
packageStartupMessage(msg)  
}



#' This function lists the datasets available in DaparToolshedData package
#'
#' @title Available datasets in the DaparToolshedData package
#' @return A list of datasets
#' @examples
#' DaparToolshedData()
#' @importFrom utils data
#' @export
#' 
DaparToolshedData <- function() {
data(package = "DaparToolshedData")}
