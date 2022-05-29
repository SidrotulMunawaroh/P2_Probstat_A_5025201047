# P2_Probstat_A_5025201047

#### Nama = Sidrotul Munawaroh
#### NRP = 5025201047
#### Kelas = Probstat A

## Penjelasan
#### 1. Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia dan telat mengambil sampel sebanyak 9 responden Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas ? Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
![image](https://user-images.githubusercontent.com/94377420/170873908-14f45cec-a46d-4735-abcc-4503b3db504e.png)

#### 1a Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
```
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100)
 
data = data.frame(x,y)
sd(data$x-data$y)

```
untuk mengecek data bisa menggunakan `data.frame` dan untuk mengetahui hasilnya bisa menggunakan `sd(data$x-data$y)`

![p2_1a](https://user-images.githubusercontent.com/94377420/170876085-1f3bea04-88eb-4e15-8678-5939c59d5cc9.png)



#### 1b Carilah nilai t (p-value)
```
t.test(x, y, alternative = "greater", var.equal = FALSE)

```
untuk mencari p-value menggunakan fungsi `t.test` 

`alternative` untuk string karakter yang menentukan hipotesis alternatif jika `print(greater)` maka hasilnya akan true

![P2_1B](https://user-images.githubusercontent.com/94377420/170876341-de61a401-1327-4b94-8c3c-722a5250f979.png)


#### 1c Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

```
var.test(x,y)
t.tes(x,y, alternative = "two.sided", mu=0)

```
![p2_1c](https://user-images.githubusercontent.com/94377420/170876391-3b19b5ae-959a-4abb-97e1-958d4d14e1e9.png)

#### 2. Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

#### 2a Apakah Anda setuju dengan klaim tersebut? 
Setujuuuu
#### 2b Jelaskan maksud dari output yang dihasilkan!

```
library(BSDA)

 tsum.test(
 mean.x = 23500, 
 s.x = sd(3900), 
 n.x = 100
  )
```

![image](https://user-images.githubusercontent.com/94377420/170876723-abfcafb3-9b10-49b9-97ac-aa116b1dd1fc.png)

#### 2c Buatlah kesimpulan berdasarkan P-Value yang dihasilkan! kesimpulan dari soal diatas adalah mobil yang digunakan rata ratanya lebih dari 20.000 km/tahun

#### 3 Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut. Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :

![image](https://user-images.githubusercontent.com/94377420/170876974-88db3e1e-b970-4752-b98f-bef22805b4ee.png)

#### 3a H0 dan H1?
```
H0 = 9.50
H1 = 10.98
```

#### 3b Hitung Sampel Statistik
```
tsum.test(
  mean.x=3.64,
  s.x = 1.67,
  n.x = 19, 
  mean.y =2.79,
  s.y = 1.32,
  n.y = 27, 
  alternative = "greater",
  var.equal = TRUE
)
```
![3b](https://user-images.githubusercontent.com/94377420/170878847-c1ffbb9e-c6b7-4551-9d84-791a530aacbf.png)

#### 3c Lakukan Uji Statistik (df =2)
```
library(mosaic)
plotDist(dist = 't', df = 2, col = "yellow")
```
![3c](https://user-images.githubusercontent.com/94377420/170878941-185ae8e3-5bc8-486d-9714-1558c6f612a7.png)

#### 3d Nilai Kritikal

```
qchisq(p = 0.05, df = 2, lower.tail = FALSE)
```
![image](https://user-images.githubusercontent.com/94377420/170878991-36fc51a7-bf34-4635-a079-e37966b64298.png)

#### 3e Keputusan
Hasil uji terletak di interval nilai kritikal, maka H0 tidak ditolak/sample tidak memiliki cukup bukti yang bertentangan dengan H0.

#### 3f Kesimpulan
kesimpulannya adalah 95% rata-rata saham di Bali dan di Bandung adalah sama.

#### 4 Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:

#### 4a Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
```
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
```
![image](https://user-images.githubusercontent.com/94377420/170880432-98409352-c6e0-4b10-82cc-2d6412a24d93.png)


#### 4b carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

```
bartlett.test(Length~V1, data=dataoneway)
```

#### 4c Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.

```
qqnorm(group1$Length)
qqline(group1$Length)
```

#### 4d Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?

#### 4e Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

#### 5a Buatlah plot sederhana untuk visualisasi data
```
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)
```

#### 5b Lakukan uji ANOVA dua arah
```
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

```
#### 5c Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
```
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```
#### 5d Lakukan uji Tukey
```
tukey <- TukeyHSD(anova)
print(tukey)
```
#### 5e Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
```
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
```

