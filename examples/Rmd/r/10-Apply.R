# Vetores base para o data frame
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

# Criando data frame para os exemplos
d <- data.frame(weight=weight, height=height, subject=subject)
head(d)

# lapply retorna uma lista
lapply(d[,1:2], mean, na.rm=TRUE)

# sapply tenta simplificar o resultado
sapply(d[,1:2], mean, na.rm=TRUE)

# Convertendo para matriz
m <- as.matrix(d[,1:2])

# apply por linha (minimo por pessoa)
apply(m, 1, min, na.rm=TRUE)

# apply por coluna (minimo por variavel)
apply(m, 2, min, na.rm=TRUE)
