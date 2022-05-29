# 4a. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians.

myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# 4b. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

bartlett.test(Length~V1, data=dataoneway)

# 4c. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang
qqnorm(group1$Length)
qqline(group1$Length)

# 4d. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?

# 4e. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
