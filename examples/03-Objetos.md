
``` r
# Criando um vetor numerico e verificando seu tipo
dado <- c(1, 2, 3, 4, 5, 6)
dado
```

```
## [1] 1 2 3 4 5 6
```

``` r
is.vector(dado)
```

```
## [1] TRUE
```


``` r
# Escalar numerico e tamanho dos objetos
numero <- 5
numero
```

```
## [1] 5
```

``` r
is.vector(numero)
```

```
## [1] TRUE
```

``` r
length(numero)
```

```
## [1] 1
```

``` r
length(dado)
```

```
## [1] 6
```


``` r
# Tipos basicos: inteiro e texto
inteiro <- 1L
texto <- "ás"
typeof(inteiro)
```

```
## [1] "integer"
```

``` r
typeof(texto)
```

```
## [1] "character"
```


``` r
# Sequencia de cartas e operacoes com inteiros e texto
cartas <- 1L:13L
faces <- c("ás", "dois", "três", "quatro",
          "cinco", "seis", "sete", "oito",
          "nove", "dez", "valete", "dama", "rei")
n <- sum(cartas)
is.integer(n)
```

```
## [1] TRUE
```

``` r
m <- max(faces)
m
```

```
## [1] "valete"
```


``` r
# Tipo de um vetor numerico
dado <- c(1, 2, 3, 4, 5, 6)
dado
```

```
## [1] 1 2 3 4 5 6
```

``` r
typeof(dado)
```

```
## [1] "double"
```


``` r
# Logicos a partir de comparacoes
3 > 4
```

```
## [1] FALSE
```

``` r
logico <- c(TRUE, FALSE, 
            3 >= 4, 3 < 4, 
            3 <= 4, 3 < 4, 
            3 != 4, 4 == 4)
logico
```

```
## [1]  TRUE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
```

``` r
typeof(logico)
```

```
## [1] "logical"
```


``` r
# Numeros complexos
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
```

```
## [1] 1+1i 1+2i 1+3i
```

``` r
typeof(comp)
```

```
## [1] "complex"
```


``` r
# Tipo raw (bytes)
r <- raw(3)
typeof(r)
```

```
## [1] "raw"
```

``` r
r[2] <- as.raw(255) 
r[3] <- as.raw(1024) 
```

```
## Warning: out-of-range values treated as 0 in coercion to raw
```

``` r
r
```

```
## [1] 00 ff 00
```


``` r
# Atributos e nomes de um vetor
dado <- c(1,2,3,4,5,6)
attributes(dado)
```

```
## NULL
```

``` r
names(dado) <- c("ás", "dois", "três", 
                 'quatro', 'cinco', 'seis')
attributes(dado)
```

```
## $names
## [1] "ás"     "dois"   "três"   "quatro" "cinco"  "seis"
```


``` r
# Removendo nomes
names(dado) <- NULL
dado
```

```
## [1] 1 2 3 4 5 6
```


``` r
# Atributo dim para transformar em matriz
dado <- 1:6
dim(dado) <- c(2, 3)
dado
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

``` r
attributes(dado)
```

```
## $dim
## [1] 2 3
```


``` r
# Criando matrizes com matrix()
m <- matrix(dado, nrow = 2)
m
```

```
##      [,1] [,2] [,3]
## [1,]    1    3    5
## [2,]    2    4    6
```

``` r
n <- matrix(dado, nrow = 2, byrow = TRUE)
n
```

```
##      [,1] [,2] [,3]
## [1,]    1    2    3
## [2,]    4    5    6
```


``` r
# Diferenca entre typeof, class e attributes
typeof(dado)
```

```
## [1] "integer"
```

``` r
class(dado)
```

```
## [1] "matrix" "array"
```

``` r
attributes(dado)
```

```
## $dim
## [1] 2 3
```


``` r
# Objetos de data e hora
now <- Sys.time()
now
```

```
## [1] "2026-01-10 12:46:54 -03"
```

``` r
typeof(now)
```

```
## [1] "double"
```

``` r
class(now)
```

```
## [1] "POSIXct" "POSIXt"
```


``` r
# Fatores e seus atributos
genero <- factor(c("feminino", "masculino", 
                   "feminino", "masculino"))
typeof(genero)
```

```
## [1] "integer"
```

``` r
attributes(genero)
```

```
## $levels
## [1] "feminino"  "masculino"
## 
## $class
## [1] "factor"
```


``` r
# Convertendo fator para outros tipos
unclass(genero)
```

```
## [1] 1 2 1 2
## attr(,"levels")
## [1] "feminino"  "masculino"
```

``` r
n <- unclass(genero)
as.integer(genero)
```

```
## [1] 1 2 1 2
```

``` r
as.character(genero)
```

```
## [1] "feminino"  "masculino" "feminino"  "masculino"
```


``` r
# Coercao entre tipos basicos
sum(c(TRUE, TRUE, FALSE, FALSE))
```

```
## [1] 2
```

``` r
sum(c(1, 1, 0, 0))
```

```
## [1] 2
```

``` r
as.character(1)
```

```
## [1] "1"
```

``` r
as.logical(1)
```

```
## [1] TRUE
```

``` r
as.numeric(FALSE)
```

```
## [1] 0
```


``` r
# Criando um data frame simples
df <- data.frame(
    face = c("ás", "dois", "quatro"),  
    naipe = c("ouros", "copas", "paus"), 
    valor = c(1, 2, 4))
df
```

```
##     face naipe valor
## 1     ás ouros     1
## 2   dois copas     2
## 3 quatro  paus     4
```


``` r
# Salvando e lendo dados em CSV
write.csv(df, file = "cartas.csv", 
          row.names = FALSE, quote=FALSE)
cartas <- read.csv("cartas.csv")
```
