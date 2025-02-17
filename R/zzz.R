.onLoad <- function(libname, pkgname) {
  required_pkgs <- c("tidyverse", "DESeq2", "clusterProfiler", "org.Hs.eg.db",
                     "enrichplot", "topGO", "Rgraphviz", "pheatmap")
  missing_pkgs <- required_pkgs[!sapply(required_pkgs, requireNamespace, quietly = TRUE)]
  if (length(missing_pkgs) > 0) {
    packageStartupMessage("Missing packages: ", paste(missing_pkgs, collapse = ", "))
    packageStartupMessage("Please install them using install.packages() or BiocManager::install().")
  }
}

.onAttach <- function(libname, pkgname) {
  if (interactive()) {
    data("test_data", package = pkgname)
    copy_raw_count_data()
    copy_analysis()
    packageStartupMessage("IFFSbio loaded successfully!")
  }
}
