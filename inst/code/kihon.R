# データの型

# Scalar

a1 <- 1
print(a1)

# a2に好きな数字や文字を与えてください。




# ベクター

b1 <- c(7, 8, 9)
print(b1)
b2 <- c(11,12,13)
print(b2)


# b2に好きなベクトルを与えてください。




# データフレーム

Name <- c("Bob", "Alice", "Ken", "Hiroko", "Bill", "Hanako")
Bw   <- c(40, 50, 60, 90, 70, 55)
Ht   <- c(156, 187, 168, 145, 172, 156)

df <- data.frame(Name, Bw, Ht)

print(df)
view(df)

# dfに性別を追加
Gender <- c("M","F","M","F","M","F")
df <- data.frame(df, Gender)
print(df)



## dataframeからのデータの抽出

df[1:2, ] # df[行, 列]
df[, 1]
df$Name   #$の入力の後、tabキーを押すと列名が表示される
df[1, 2]

# dfから3-4行目と2-3列目を抽出してください




# 関数を使ってみる

head(df, 3)      # 上から3行を表示
mean(df$Bw)      # 平均
sd(df$Bw)        # 標準偏差
dim(df)          # 行数と列数を表示
nrow(df)         # 行数を表示
ncol(df)         # 列数を表示
rownames(df)     # 行名を表示
colnames(df)     # 列名を表示


# t検定：オプション

## 男性の身長だけを取り出す
male_ht <- df$Ht[df$Gender == "M"]  # 見て何となく理解できる

## 女性の身長だけを取り出す
female_ht <- df$Ht[df$Gender == "F"]

## 男性と女性の身長をt検定
t.test(male_ht, female_ht, paired = FALSE)


