faces <- c("ás", "dois", "três", "quatro",
           "cinco", "seis", "sete", "oito",
           "nove", "dez", "valete", "dama", "rei")
naipes = c("ouros", "copas", "paus", "espadas")
baralho <- expand.grid(face=faces, naipe=naipes)
baralho

baralho$valor <- c(1:13, 1:13, 1:13, 1:13)
baralho
head(baralho)

baralho[1, 1] 
baralho[1, "face"] 
baralho[c(1,2), 1] 
baralho[ , 1]

baralho[c(11,14), "face"] 
baralho[c(11,14), 1] 
baralho$face[c(11,14)]

baralho[11, 1:2] 
baralho[c(11,14), 1:2] 
baralho[c(11,14), c("face", "naipe")] 

baralho[c(11,14), "face", drop=FALSE] 
baralho[c(11,14), 1, drop=FALSE] 

baralho[c(1:13), 1] 
baralho[-c(14:52), 1] 
baralho[1:3, -1] 

baralho[ , ]
baralho[1, ] 
baralho[ , 1] 

baralho[1, c(TRUE, TRUE, FALSE)]

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
