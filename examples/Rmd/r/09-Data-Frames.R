# Vetores base para o data frame
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

# Criando data frame
d <- data.frame(weight=weight, height=height, subject=subject)
head(d)

# Adicionando coluna calculada
d$bmi <- d$weight/d$height^2
head(d)

# Removendo coluna
d$subject <- NULL
head(d)

# Lendo dados externos
wine = read.table(
  "http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", 
  header = TRUE, sep = ",")
head(wine)

# Salvando objeto RData
save(wine, file="wine.RData", compress=TRUE)

# Removendo do ambiente
rm(wine)

# Recarregando o objeto salvo
load("wine.RData")
head(wine, 3)

# Exportando para CSV
write.table(wine, file="wine.csv", row.names=FALSE, quote=FALSE, sep=",")

# Filtro logico
i <- d$height > 1.7
i

# Subconjunto por indice logico
d[i,]

# Gerando dados aleatorios para comparar desempenho
rheight <- rnorm(100000, 1.8, sd=0.2)
rweight <- rnorm(100000, 72, sd=15)

# Calculo vetorizado de IMC
start_time <- Sys.time()
hw <- data.frame(height=rheight, weight=rweight)
hw$bmi <- hw$weight/hw$height^2
end_time <- Sys.time()
end_time - start_time

# Calculo com loop for
start_time <- Sys.time()
hw <- data.frame(height=rheight, weight=rweight)
for (i in 1:nrow(hw)) {
  hw$bmi[i] <- hw$weight[i]/hw$height[i]^2
}
end_time <- Sys.time()
end_time - start_time

# Calculo com matriz intermediaria
start_time <- Sys.time()
hw <- data.frame(height=rheight, weight=rweight)
hwm <- as.matrix(hw)
bmi <- 0
for (i in 1:nrow(hwm)) {
  bmi[i] <- hwm[i,1]/hwm[i,2]^2
}
hw$bmi <- bmi
end_time <- Sys.time()
end_time - start_time
