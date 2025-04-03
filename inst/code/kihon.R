# データの型

# Scalar

a1 <- 1
print(a)

# a2に好きな数字や文字を与えてください。




# ベクター

b1 <- c(7, 8, 9)
print(b1)
b2 <- c(11,12,13)
print(b2)


# b2に好きなベクトルを与えてください。





# Matrix: 2D Array
c1 <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)

# c2に好きなmatrixを作っていれてください。




# データフレーム

d1 <- data.frame(Name = c("A", "B", "C"))
print(d1)
d2 <- data.frame(Name = c("Bob", "Alice", "Ken", "Hiroko", "Bill"),
                 Bw = c(40, 50, 60, 90, 70),
                 Ht = c(156, 187, 168, 145, 172)
                 )
print(d2)

# d2に性別)を追加してください
## ヒント　Gender = c()を使ってください



# dataframeの取り扱い
## - データ解析の基本単位　
## - 実際には自分で作るというよりcsvやxlsxを読み込んで使用することが多い

## dataframeからのデータの抽出

d2[1:2, ]
d2[, 1]
d2$Name   #$の入力の後、tabキーを押すと列名が表示される
d2$Score
d2[1, 2]

# d2から3-4行目と2-3列目を抽出してください





# csvファイルの読み込み
df <- read.csv("./input_data/raw_count_data.csv")

## データの確認
head(df)
head(df$GeneID)
head(df$TranscriptID)
df[1:2,2:3]






# 関数とは
mean(b1)
sd(b1)
plot(b1,b2)
plot(d2$Bw, d2$Ht)
t.test(b1,b2, paired = FALSE)



## dfでChrの列に何が入っているか確認してください
names(df)
table(df$Chr)
unique(df$Chr)








# libraryの確認
## インストール（最初の一回だけ）
install.packages("ggplot2")

## libraryの読み込み　（解析を開いたら毎回実施）
library(ggplot2)

## 含まれる関数をみたいなら
ls("package:ggplot2")

