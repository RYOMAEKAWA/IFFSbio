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
    data("test_data", package = pkgname)
    #message("test_data has been loaded.")
}
