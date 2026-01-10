# Criando um vetor numerico e verificando seu tipo
dado <- c(1, 2, 3, 4, 5, 6)
dado
is.vector(dado)

# Escalar numerico e tamanho dos objetos
numero <- 5
numero
is.vector(numero)
length(numero)
length(dado)

# Tipos basicos: inteiro e texto
inteiro <- 1L
texto <- "坟"
typeof(inteiro)
typeof(texto)

# Sequencia de cartas e operacoes com inteiros e texto
cartas <- 1L:13L
faces <- c("坟", "dois", "trì", "quatro",
          "cinco", "seis", "sete", "oito",
          "nove", "dez", "valete", "dama", "rei")
n <- sum(cartas)
is.integer(n)
m <- max(faces)
m

# Tipo de um vetor numerico
dado <- c(1, 2, 3, 4, 5, 6)
dado
typeof(dado)

# Logicos a partir de comparacoes
3 > 4
logico <- c(TRUE, FALSE, 
            3 >= 4, 3 < 4, 
            3 <= 4, 3 < 4, 
            3 != 4, 4 == 4)
logico
typeof(logico)

# Numeros complexos
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
typeof(comp)

# Tipo raw (bytes)
r <- raw(3)
typeof(r)
r[2] <- as.raw(255) 
r[3] <- as.raw(1024) 
r

# Atributos e nomes de um vetor
dado <- c(1,2,3,4,5,6)
attributes(dado)
names(dado) <- c("um", "dois", "trì", 
                 'quatro', 'cinco', 'seis')
attributes(dado)

# Removendo nomes
names(dado) <- NULL
dado

# Atributo dim para transformar em matriz
dado <- 1:6
dim(dado) <- c(2, 3)
dado
attributes(dado)

# Criando matrizes com matrix()
m <- matrix(dado, nrow = 2)
m
n <- matrix(dado, nrow = 2, byrow = TRUE)
n

# Diferenca entre typeof, class e attributes
typeof(dado)
class(dado)
attributes(dado)

# Objetos de data e hora
now <- Sys.time()
now
typeof(now)
class(now)

# Fatores e seus atributos
genero <- factor(c("feminino", "masculino", 
                   "feminino", "masculino"))
typeof(genero)
attributes(genero)

# Convertendo fator para outros tipos
unclass(genero)
n <- unclass(genero)
as.integer(genero)
as.character(genero)

# Coercao entre tipos basicos
sum(c(TRUE, TRUE, FALSE, FALSE))
sum(c(1, 1, 0, 0))
as.character(1)
as.logical(1)
as.numeric(FALSE)

# Criando um data frame simples
df <- data.frame(
    face = c("坟", "dois", "quatro"),  
    naipe = c("ouros", "copas", "paus"), 
    valor = c(1, 2, 4))
df

# Salvando e lendo dados em CSV
write.csv(df, file = "cartas.csv", 
          row.names = FALSE, quote=FALSE)
cartas <- read.csv("cartas.csv")
