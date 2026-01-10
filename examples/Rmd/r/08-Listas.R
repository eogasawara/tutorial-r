# Vetores base para a lista
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

# Criando uma lista heterogenea
mybag <- list(weight, height, subject, 0, "a")
mybag

# Adicionando um novo elemento
n <- length(mybag)
mybag[[n+1]] <- "b"
mybag

# Sublista com []
slice <- mybag[1]
slice
is.list(slice)

# Sublista com varios indices
slice <- mybag[c(1,3)]
slice
is.list(slice)

# Verificando se a sublista e vetor
is.vector(slice)

# Extraindo elemento com [[
h <- mybag[[1]]
h

# Tipo do elemento extraido
is.vector(h)
is.list(h)

# Lista nomeada
mybag <- list(weight=weight, height=height, subject=subject, 
              valor=0, nome="a")
mybag

# Adicionando e removendo campos
mybag$bmi <- mybag$weight/mybag$height^2
mybag[[4]] <- NULL
mybag$nome <- NULL
mybag
