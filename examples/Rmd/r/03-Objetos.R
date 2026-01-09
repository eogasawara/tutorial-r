dado <- c(1, 2, 3, 4, 5, 6)
dado
is.vector(dado)

numero <- 5
numero

is.vector(numero)

length(numero)

length(dado)

inteiro <- 1L
texto <- "ás"

typeof(inteiro)
typeof(texto)

cartas <- 1L:13L
faces <- c("ás", "dois", "três", "quatro",
          "cinco", "seis", "sete", "oito",
          "nove", "dez", "valete", "dama", "rei")

n <- sum(cartas)
is.integer(n)

m <- max(faces)
m

dado <- c(1, 2, 3, 4, 5, 6)
dado
typeof(dado)

3 > 4

logico <- c(TRUE, FALSE, 
            3 >= 4, 3 < 4, 
            3 <= 4, 3 < 4, 
            3 != 4, 4 == 4)
logico
typeof(logico)

comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp

typeof(comp)

r <- raw(3)
typeof(r)

r[2] <- as.raw(255) 
r[3] <- as.raw(1024) 

r

dado <- c(1,2,3,4,5,6)
attributes(dado)

names(dado) <- c("um", "dois", "três", 
                 'quatro', 'cinco', 'seis')
attributes(dado)

names(dado) <- NULL
dado

dado <- 1:6
dim(dado) <- c(2, 3)
dado

attributes(dado)

m <- matrix(dado, nrow = 2)
m

n <- matrix(dado, nrow = 2, byrow = TRUE)
n

typeof(dado)

class(dado)

attributes(dado)

now <- Sys.time()
now

typeof(now)

class(now)

genero <- factor(c("feminino", "masculino", 
                   "feminino", "masculino"))

typeof(genero)

attributes(genero)

unclass(genero)

n <- unclass(genero)

as.integer(genero)

as.character(genero)

sum(c(TRUE, TRUE, FALSE, FALSE))
sum(c(1, 1, 0, 0))
as.character(1)
as.logical(1)
as.numeric(FALSE)

df <- data.frame(
    face = c("ás", "dois", "quatro"),  
    naipe = c("ouros", "copas", "paus"), 
    valor = c(1, 2, 4))
df

write.csv(df, file = "cartas.csv", 
          row.names = FALSE, quote=FALSE)

cartas <- read.csv("cartas.csv")
