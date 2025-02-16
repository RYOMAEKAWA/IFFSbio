#' Copy raw_count_data.csv to Working Directory
#'
#' This function copies the raw_count_data.csv file from the package to the current working directory.
#' @export
copy_raw_count_data <- function() {
  file_path <- system.file("extdata", "raw_count_data.csv", package = "IFFSbio")
  if (file.exists(file_path)) {
    file.copy(file_path, to = getwd())
    message("raw_count_data.csv has been copied to your working directory.")
  } else {
    stop("File not found in the package.")
  }
}
