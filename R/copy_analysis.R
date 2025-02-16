#' Copy Analysis Rmd to Working Directory
#'
#' This function copies the analysis.Rmd file from the package to the current working directory.
#' @export
copy_analysis <- function() {
  file_path <- system.file("extcode", "analysis.Rmd", package = "IFFSbio")
  if (file.exists(file_path)) {
    file.copy(file_path, to = getwd())
    message("analysis.Rmd has been copied to your working directory.")
  } else {
    stop("File not found in the package.")
  }
}
