# Vetores base para os exemplos
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

# Criando um fator ordenado
pain <- c(0,3,2,2,1)
fpain <- factor(pain,levels=0:3, ordered=TRUE)
fpain

# Renomeando os niveis
levels(fpain) <- c("sem","baixa","média","alta")
fpain

# Classificando alturas com if/else
lev <- rep("", length(height))
for (i in 1:length(height)) {
  if (height[i] < 1.7)
    lev[i] <- "baixa"
  else if (height[i] < 1.9)
    lev[i] <- "média"
  else 
    lev[i] <- "alta"
}
lev <- factor(lev,levels=c("baixa", "média", "alta"), ordered=TRUE)
lev

# Usando cut para categorizar alturas
lev <- cut(height, breaks=c(0, 1.7, 1.9, .Machine$double.xmax), ordered=TRUE)
lev
levels(lev) <- c("baixa", "média", "alta")
lev
