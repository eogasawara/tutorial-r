# Montando o baralho com expand.grid
faces <- c("坟", "dois", "trì", "quatro",
           "cinco", "seis", "sete", "oito",
           "nove", "dez", "valete", "dama", "rei")
naipes = c("ouros", "copas", "paus", "espadas")
baralho <- expand.grid(face=faces, naipe=naipes)
baralho

# Adicionando a coluna de valores
baralho$valor <- c(1:13, 1:13, 1:13, 1:13)
baralho
head(baralho)

# Acessando linhas e colunas
baralho[1, 1] 
baralho[1, "face"] 
baralho[c(1,2), 1] 
baralho[ , 1]

# Selecionando indices especificos
baralho[c(11,14), "face"] 
baralho[c(11,14), 1] 
baralho$face[c(11,14)]

# Selecionando linhas e colunas juntas
baralho[11, 1:2] 
baralho[c(11,14), 1:2] 
baralho[c(11,14), c("face", "naipe")] 

# Mantendo data frame com drop = FALSE
baralho[c(11,14), "face", drop=FALSE] 
baralho[c(11,14), 1, drop=FALSE] 

# Selecao por intervalos e exclusao
baralho[c(1:13), 1] 
baralho[-c(14:52), 1] 
baralho[1:3, -1] 

# Selecionando tudo ou uma coluna
baralho[ , ]
baralho[1, ] 
baralho[ , 1] 

# Selecao com vetor logico
baralho[1, c(TRUE, TRUE, FALSE)]

# Filtrando com condicao
filtro <- baralho$valor < 3
baralho[filtro, ]
baralho[baralho$valor < 3,]

# Embaralhando com sample
ordem <- sample(1:nrow(baralho))
ordem
cartas <- baralho[ordem,]
cartas

# Funcao para embaralhar
embaralhar <- function(baralho) {
  ordem <- sample(1:nrow(baralho))
  return(baralho[ordem,])
}
cartas <- embaralhar(baralho)
cartas
