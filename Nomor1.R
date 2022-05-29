#1a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
x = c(78,75,67,77,70,72,78,74,77)
y = c(100,95,70,90,90,90,89,90,100)

data = data.frame(x,y)
sd(data$x-data$y)
