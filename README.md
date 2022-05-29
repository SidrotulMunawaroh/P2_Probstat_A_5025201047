# P2_Probstat_A_5025201047

### Nama = Sidrotul Munawaroh
### NRP = 5025201047
### Kelas = Probstat A

## Penjelasan
#### 1. Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia dan telat mengambil sampel sebanyak 9 responden Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas ? Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
![image](https://user-images.githubusercontent.com/94377420/170873908-14f45cec-a46d-4735-abcc-4503b3db504e.png)

##### 1a Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
```
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100)
 
data = data.frame(x,y)
sd(data$x-data$y)

```
untuk mengecek data bisa menggunakan `data.frame` dan untuk mengetahui hasilnya bisa menggunakan `sd(data$x-data$y)`


##### 1b carilah nilai t (p-value)
```
t.test(x, y, alternative = "greater", var.equal = FALSE)

```
untuk mencari p-value menggunakan fungsi `t.test` 
`alternative` untuk string karakter yang menentukan hipotesis alternatif jika `print(greater)` maka hasilnya akan true

