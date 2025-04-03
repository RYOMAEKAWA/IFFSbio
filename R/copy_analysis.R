#' Copy Analysis Rmd and kihon.R to Working Directory
#'
#' This function copies the analysis.Rmd and kihon.R files from the package to the current working directory.
#' @export
copy_analysis <- function() {
  files_to_copy <- c("analysis.Rmd", "kihon.R")

  for (file_name in files_to_copy) {
    file_path <- system.file("code", file_name, package = "IFFSbio")
    if (file.exists(file_path)) {
      file.copy(file_path, to = getwd(), overwrite = TRUE)
      message(file_name, " has been copied to your working directory.")
    } else {
      warning(file_name, " was not found in the package.")
    }
  }
}
