# Carregando um objeto .rda pela URL
u <- "https://raw.githubusercontent.com/eogasawara/tutorial-r/main/examples/baralho.rda"
load(url(u))
head(baralho)

# Salvando e removendo o objeto do ambiente
save(baralho, file="baralho.rda")
rm(baralho)

# Recarregando o arquivo salvo localmente
load(file="baralho.rda")
head(baralho)

# Criando uma coluna de indice
baralho$idx <- 1:52
head(baralho)

# Alterando valores pontuais na coluna
baralho$idx[c(1,3,5)] <- 1
head(baralho)
baralho$idx[4:6] <- baralho$idx[4:6] + 1
head(baralho)

# Selecionando linhas com logica booleana
baralho$idx <- 1:52
vec <- (baralho$idx %% 2 == 1)
idx <- baralho$idx[vec]
idx
cartas <- baralho[vec,]
cartas

# Comparacoes e operador %in%
1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)
1 %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)

# Filtros compostos com AND e OR
x <- baralho$face == "dama" & baralho$naipe == "espadas"
head(baralho[x,])
x <- baralho$face == "dama" | baralho$naipe == "espadas"
head(baralho[x,])

# Tratando valores ausentes (NA)
1 + NA
NA == 1
c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)

# Filtrando com condicao simples
filtro <- baralho$valor < 3
baralho[filtro, ]
baralho[baralho$valor < 3,]

# Embaralhando as linhas
ordem <- sample(1:nrow(baralho))
ordem
cartas <- baralho[ordem,]
cartas

# Funcao para embaralhar o baralho
embaralhar <- function(baralho) {
  ordem <- sample(1:nrow(baralho))
  return(baralho[ordem,])
}
cartas <- embaralhar(baralho)
cartas
