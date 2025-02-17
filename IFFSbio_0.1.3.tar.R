
roxygen2::roxygenise()


# DISCRIPTIONファイルを作成
file.remove("DESCRIPTION")
usethis::use_description(
  fields = list(
    Title = "IFFS Bioinformatics Test Package",
    Description = "A test package for bioinformatics analysis using IFFS data.",
    Version = "0.1.3",
    Author = "Your Name [RYO MAEKAWA]",
    Maintainer = "Your Name <ryomaekawa@outlook.jp>",
    License = "MIT",
    LazyData = "true"
  )
)

## 依存パッケージ CRAN分のみ
usethis::use_package("ggplot2")
usethis::use_package("dplyr")
usethis::use_package("tibble")
usethis::use_package("readr")
usethis::use_package("purrr")
usethis::use_package("forcats")
usethis::use_package("stringr")
## 依存パッケージ BiocManager分（zzz.Rでインストールするから宣言は不要だが）
usethis::use_package("DESeq2", type = "Suggests")
usethis::use_package("clusterProfiler", type = "Suggests")
usethis::use_package("org.Hs.eg.db", type = "Suggests")
usethis::use_package("enrichplot", type = "Suggests")
usethis::use_package("topGO", type = "Suggests")
usethis::use_package("Rgraphviz", type = "Suggests")
usethis::use_package("pheatmap", type = "Suggests")


# testデータを読み込む済みのデータとして格納
test_data <- read.csv("./inst/input_data/raw_count_data.csv", header  = T)
test_data <- test_data[,-which(names(test_data)=="GO_info")]
usethis::use_data(test_data, overwrite = TRUE)

# NAMESPACE の更新
devtools::document()

# tar.gzにbuildディレクトリ内にパッケージを作成
#devtools::build(path = "./build")


