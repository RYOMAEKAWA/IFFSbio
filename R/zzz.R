.onLoad <- function(libname, pkgname) {
  if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
  }

  cran_packages <- c("tidyverse")
  bioc_packages <- c("DESeq2", "clusterProfiler", "org.Hs.eg.db",
                     "enrichplot", "topGO", "Rgraphviz", "pheatmap")

  for (pkg in cran_packages) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      install.packages(pkg, dependencies = TRUE)
    }
  }

  for (pkg in bioc_packages) {
    if (!requireNamespace(pkg, quietly = TRUE)) {
      BiocManager::install(pkg, ask = FALSE)
    }
  }
}

.onAttach <- function(libname, pkgname) {
    #packageStartupMessage("Running setup for IFFSbio...")
    copy_analysis()
    copy_raw_count_data()
    data("test_data", package = pkgname)
    #packageStartupMessage("Data files have been copied to the current working directory.")
    #message("test_data has been loaded.")
}
