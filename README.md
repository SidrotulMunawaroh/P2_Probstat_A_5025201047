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

#### 2a Apakah Anda setuju dengan klaim tersebut? Setujuuuu
#### 2b Jelaskan maksud dari output yang dihasilkan!

```
library(BSDA)

 tsum.test(
 mean.x = 23500, 
 s.x = sd(3900), 
 n.x = 100
  )
```

