#' Copy raw_count_data.csv to data folder in Working Directory
#'
#' This function copies the raw_count_data.csv file from the package to a 'data' folder in the current working directory.
#' @export
copy_raw_count_data <- function() {
  # 作業ディレクトリ内にdataフォルダを作成（なければ）
  if (!dir.exists("input_data")) {
    dir.create("input_data")
  }

  file_path <- system.file("extdata", "raw_count_data.csv", package = "IFFSbio")
  if (file.exists(file_path)) {
    file.copy(file_path, to = file.path(getwd(), "data"))
    message("raw_count_data.csv has been copied to the 'data' folder in your working directory.")
  } else {
    stop("File not found in the package.")
  }
}
