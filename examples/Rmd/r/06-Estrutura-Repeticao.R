# Exemplo simples com variaveis escalares
weight <- 60
height = 1.75
subject <- "A"
healthy <- TRUE
bmi <- weight/height^2  
bmi 

# Vetores para calcular IMC em lote
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

# Loop for para calcular IMC
bmi <- 0
for (i in 1:length(weight)) {
  bmi[i] <- weight[i]/height[i]^2
}
bmi

# Loop for com exibicao parcial
bmi <- 0
for (i in 1:length(weight)) {
  bmi[i] <- weight[i]/height[i]^2
  print(bmi)
}
bmi

# Limpando e testando existencia de objeto
rm(bmi)
exists("bmi")

# Loop while para o mesmo calculo
i <- 1
bmi <- 0
while (i <= length(weight)) {
  bmi[i] <- weight[i]/height[i]^2
  i <- i + 1
}

# Funcao com while interno
compute_bmi <- function(weight, height) {
  i <- 1
  bmi <- 0
  while (i <= length(weight)) {
    bmi[i] <- weight[i]/height[i]^2
    i <- i + 1
  }
  return(bmi)
} 
bmi <- compute_bmi(weight, height)
bmi

# Versao vetorizada da funcao
compute_bmi <- function(weight, height) {
  resposta <- weight/height^2
  return(resposta)
} 
bmi <- compute_bmi(weight, height)
bmi

# Chamadas da funcao com escalar e vetor
compute_bmi(80, 1.79)
compute_bmi(weight, height)
