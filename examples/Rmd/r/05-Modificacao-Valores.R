u <- "https://raw.githubusercontent.com/eogasawara/tutorial-r/main/examples/baralho.rda"
load(url(u))
head(baralho)

save(baralho, file="baralho.rda")
rm(baralho)

load(file="baralho.rda")
head(baralho)

baralho$idx <- 1:52
head(baralho)

baralho$idx[c(1,3,5)] <- 1
head(baralho)
baralho$idx[4:6] <- baralho$idx[4:6] + 1
head(baralho)

baralho$idx <- 1:52
vec <- (baralho$idx %% 2 == 1)
idx <- baralho$idx[vec]
idx
cartas <- baralho[vec,]
cartas

1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)
1 %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)

x <- baralho$face == "dama" & baralho$naipe == "espadas"
head(baralho[x,])

x <- baralho$face == "dama" | baralho$naipe == "espadas"
head(baralho[x,])

1 + NA
NA == 1
c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)

filtro <- baralho$valor < 3
baralho[filtro, ]
baralho[baralho$valor < 3,]

ordem <- sample(1:nrow(baralho))
ordem
cartas <- baralho[ordem,]
cartas

embaralhar <- function(baralho) {
  ordem <- sample(1:nrow(baralho))
  return(baralho[ordem,])
}
cartas <- embaralhar(baralho)
cartas
