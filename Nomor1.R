#1a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100)

data = data.frame(x,y)
sd(data$x-data$y)

#1b. carilah nilai t (p-value)
t.test(x, y, alternative = "greater", var.equal = FALSE)

#1c. tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
var.test(x,y)
t.tes(x,y, alternative = "two.sided", mu=0)
