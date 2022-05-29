#3a H0 dan H1?
H0 = 9.50
H1 = 10.98

#3b Hitung Sampel Statistik
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

#3c Lakukan Uji Statistik (df =2)
library(mosaic)
plotDist(dist = 't', df = 2, col = "yellow")

#3d Nilai Kritikal 
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

#3e Keputusan
Hasil uji terletak di interval nilai kritikal, maka H0 tidak ditolak/sample tidak memiliki cukup bukti yang bertentangan dengan H0.

#3f Kesimpulan
kesimpulannya adalah 95% rata-rata saham di Bali dan di Bandung adalah sama.
