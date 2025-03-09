# IFFSbio: Bioinformatics Test Package for IFFS Data

##  Overview

**IFFSbio** is an R package designed for bioinformatics analysis, particularly for **IFFS data**.  
It provides various functions for:
- **Data preprocessing**
- **Differential expression analysis**
- **Enrichment analysis**
- **Visualization**

##  Installation

To install the package from GitHub, run the following command in R:

```r
if (!requireNamespace("devtools", quietly = TRUE)) install.packages("devtools")
devtools::install_github("RYOMAEKAWA/IFFSbio")
```

Alternatively, you can install a specific version from the Releases page:

```r
install.packages("https://github.com/RYOMAEKAWA/IFFSbio/releases/download/v0.1.4/IFFSbio_0.2.1.tar.gz", repos = NULL, type = "source")
```

##  Directory Structure

```r
IFFSbio
├── R/                   # Functions
│   ├── copy_analysis.R
│   ├── copy_raw_count_data.R
│   ├── plot_bar.R
│   └── zzz.R
├── inst/extdata/        # Data files
│   ├── raw_count_data.csv
│   ├── analysis.Rmd
├── data/                # Preloaded datasets
│   └── test_data.rda
├── man/                 # Documentation
├── DESCRIPTION          # Package metadata
├── NAMESPACE            # Function exports
└── README.md            # This file
```

## Usage

```r
library(IFFSbio)
```
For a detailed guide on analysis workflows and example codes, please refer to analysis.md.

## Dependencies
•	CRAN Packages: ggplot2, dplyr, tibble, readr, purrr, forcats, stringr  
•	Bioconductor Packages: DESeq2, org.Hs.eg.db, clusterProfiler, enrichplot, topGO, Rgraphviz, pheatmap  
## License
•	This package is licensed under the MIT License.  

## Notes
  •	Ensure that Bioconductor packages are installed before using this package.  
	•	The package is still under development, and new features will be added.
