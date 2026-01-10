
``` r
# Montando o baralho com expand.grid
faces <- c("坟", "dois", "trì", "quatro",
           "cinco", "seis", "sete", "oito",
           "nove", "dez", "valete", "dama", "rei")
naipes = c("ouros", "copas", "paus", "espadas")
baralho <- expand.grid(face=faces, naipe=naipes)
baralho
```

```
##      face   naipe
## 1      坟   ouros
## 2    dois   ouros
## 3     trì   ouros
## 4  quatro   ouros
## 5   cinco   ouros
## 6    seis   ouros
## 7    sete   ouros
## 8    oito   ouros
## 9    nove   ouros
## 10    dez   ouros
## 11 valete   ouros
## 12   dama   ouros
## 13    rei   ouros
## 14     坟   copas
## 15   dois   copas
## 16    trì   copas
## 17 quatro   copas
## 18  cinco   copas
## 19   seis   copas
## 20   sete   copas
## 21   oito   copas
## 22   nove   copas
## 23    dez   copas
## 24 valete   copas
## 25   dama   copas
## 26    rei   copas
## 27     坟    paus
## 28   dois    paus
## 29    trì    paus
## 30 quatro    paus
## 31  cinco    paus
## 32   seis    paus
## 33   sete    paus
## 34   oito    paus
## 35   nove    paus
## 36    dez    paus
## 37 valete    paus
## 38   dama    paus
## 39    rei    paus
## 40     坟 espadas
## 41   dois espadas
## 42    trì espadas
## 43 quatro espadas
## 44  cinco espadas
## 45   seis espadas
## 46   sete espadas
## 47   oito espadas
## 48   nove espadas
## 49    dez espadas
## 50 valete espadas
## 51   dama espadas
## 52    rei espadas
```


``` r
# Adicionando a coluna de valores
baralho$valor <- c(1:13, 1:13, 1:13, 1:13)
baralho
```

```
##      face   naipe valor
## 1      坟   ouros     1
## 2    dois   ouros     2
## 3     trì   ouros     3
## 4  quatro   ouros     4
## 5   cinco   ouros     5
## 6    seis   ouros     6
## 7    sete   ouros     7
## 8    oito   ouros     8
## 9    nove   ouros     9
## 10    dez   ouros    10
## 11 valete   ouros    11
## 12   dama   ouros    12
## 13    rei   ouros    13
## 14     坟   copas     1
## 15   dois   copas     2
## 16    trì   copas     3
## 17 quatro   copas     4
## 18  cinco   copas     5
## 19   seis   copas     6
## 20   sete   copas     7
## 21   oito   copas     8
## 22   nove   copas     9
## 23    dez   copas    10
## 24 valete   copas    11
## 25   dama   copas    12
## 26    rei   copas    13
## 27     坟    paus     1
## 28   dois    paus     2
## 29    trì    paus     3
## 30 quatro    paus     4
## 31  cinco    paus     5
## 32   seis    paus     6
## 33   sete    paus     7
## 34   oito    paus     8
## 35   nove    paus     9
## 36    dez    paus    10
## 37 valete    paus    11
## 38   dama    paus    12
## 39    rei    paus    13
## 40     坟 espadas     1
## 41   dois espadas     2
## 42    trì espadas     3
## 43 quatro espadas     4
## 44  cinco espadas     5
## 45   seis espadas     6
## 46   sete espadas     7
## 47   oito espadas     8
## 48   nove espadas     9
## 49    dez espadas    10
## 50 valete espadas    11
## 51   dama espadas    12
## 52    rei espadas    13
```

``` r
head(baralho)
```

```
##     face naipe valor
## 1     坟 ouros     1
## 2   dois ouros     2
## 3    trì ouros     3
## 4 quatro ouros     4
## 5  cinco ouros     5
## 6   seis ouros     6
```


``` r
# Acessando linhas e colunas
baralho[1, 1] 
```

```
## [1] 坟
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```

``` r
baralho[1, "face"] 
```

```
## [1] 坟
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```

``` r
baralho[c(1,2), 1] 
```

```
## [1] 坟   dois
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```

``` r
baralho[ , 1]
```

```
##  [1] 坟     dois   trì    quatro cinco  seis   sete   oito  
##  [9] nove   dez    valete dama   rei    坟     dois   trì   
## [17] quatro cinco  seis   sete   oito   nove   dez    valete
## [25] dama   rei    坟     dois   trì    quatro cinco  seis  
## [33] sete   oito   nove   dez    valete dama   rei    坟    
## [41] dois   trì    quatro cinco  seis   sete   oito   nove  
## [49] dez    valete dama   rei   
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```


``` r
# Selecionando indices especificos
baralho[c(11,14), "face"] 
```

```
## [1] valete 坟    
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```

``` r
baralho[c(11,14), 1] 
```

```
## [1] valete 坟    
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```

``` r
baralho$face[c(11,14)]
```

```
## [1] valete 坟    
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```


``` r
# Selecionando linhas e colunas juntas
baralho[11, 1:2] 
```

```
##      face naipe
## 11 valete ouros
```

``` r
baralho[c(11,14), 1:2] 
```

```
##      face naipe
## 11 valete ouros
## 14     坟 copas
```

``` r
baralho[c(11,14), c("face", "naipe")] 
```

```
##      face naipe
## 11 valete ouros
## 14     坟 copas
```


``` r
# Mantendo data frame com drop = FALSE
baralho[c(11,14), "face", drop=FALSE] 
```

```
##      face
## 11 valete
## 14     坟
```

``` r
baralho[c(11,14), 1, drop=FALSE] 
```

```
##      face
## 11 valete
## 14     坟
```


``` r
# Selecao por intervalos e exclusao
baralho[c(1:13), 1] 
```

```
##  [1] 坟     dois   trì    quatro cinco  seis   sete   oito  
##  [9] nove   dez    valete dama   rei   
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```

``` r
baralho[-c(14:52), 1] 
```

```
##  [1] 坟     dois   trì    quatro cinco  seis   sete   oito  
##  [9] nove   dez    valete dama   rei   
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```

``` r
baralho[1:3, -1] 
```

```
##   naipe valor
## 1 ouros     1
## 2 ouros     2
## 3 ouros     3
```


``` r
# Selecionando tudo ou uma coluna
baralho[ , ]
```

```
##      face   naipe valor
## 1      坟   ouros     1
## 2    dois   ouros     2
## 3     trì   ouros     3
## 4  quatro   ouros     4
## 5   cinco   ouros     5
## 6    seis   ouros     6
## 7    sete   ouros     7
## 8    oito   ouros     8
## 9    nove   ouros     9
## 10    dez   ouros    10
## 11 valete   ouros    11
## 12   dama   ouros    12
## 13    rei   ouros    13
## 14     坟   copas     1
## 15   dois   copas     2
## 16    trì   copas     3
## 17 quatro   copas     4
## 18  cinco   copas     5
## 19   seis   copas     6
## 20   sete   copas     7
## 21   oito   copas     8
## 22   nove   copas     9
## 23    dez   copas    10
## 24 valete   copas    11
## 25   dama   copas    12
## 26    rei   copas    13
## 27     坟    paus     1
## 28   dois    paus     2
## 29    trì    paus     3
## 30 quatro    paus     4
## 31  cinco    paus     5
## 32   seis    paus     6
## 33   sete    paus     7
## 34   oito    paus     8
## 35   nove    paus     9
## 36    dez    paus    10
## 37 valete    paus    11
## 38   dama    paus    12
## 39    rei    paus    13
## 40     坟 espadas     1
## 41   dois espadas     2
## 42    trì espadas     3
## 43 quatro espadas     4
## 44  cinco espadas     5
## 45   seis espadas     6
## 46   sete espadas     7
## 47   oito espadas     8
## 48   nove espadas     9
## 49    dez espadas    10
## 50 valete espadas    11
## 51   dama espadas    12
## 52    rei espadas    13
```

``` r
baralho[1, ] 
```

```
##   face naipe valor
## 1   坟 ouros     1
```

``` r
baralho[ , 1] 
```

```
##  [1] 坟     dois   trì    quatro cinco  seis   sete   oito  
##  [9] nove   dez    valete dama   rei    坟     dois   trì   
## [17] quatro cinco  seis   sete   oito   nove   dez    valete
## [25] dama   rei    坟     dois   trì    quatro cinco  seis  
## [33] sete   oito   nove   dez    valete dama   rei    坟    
## [41] dois   trì    quatro cinco  seis   sete   oito   nove  
## [49] dez    valete dama   rei   
## 13 Levels: 坟 dois trì quatro cinco seis sete oito ... rei
```


``` r
# Selecao com vetor logico
baralho[1, c(TRUE, TRUE, FALSE)]
```

```
##   face naipe
## 1   坟 ouros
```


``` r
# Filtrando com condicao
filtro <- baralho$valor < 3
baralho[filtro, ]
```

```
##    face   naipe valor
## 1    坟   ouros     1
## 2  dois   ouros     2
## 14   坟   copas     1
## 15 dois   copas     2
## 27   坟    paus     1
## 28 dois    paus     2
## 40   坟 espadas     1
## 41 dois espadas     2
```

``` r
baralho[baralho$valor < 3,]
```

```
##    face   naipe valor
## 1    坟   ouros     1
## 2  dois   ouros     2
## 14   坟   copas     1
## 15 dois   copas     2
## 27   坟    paus     1
## 28 dois    paus     2
## 40   坟 espadas     1
## 41 dois espadas     2
```


``` r
# Embaralhando com sample
ordem <- sample(1:nrow(baralho))
ordem
```

```
##  [1] 52 15 17  7  1 11  6 51  4  9 22 24 28 41 37  3  2 27
## [19] 34 29 10 21 13 47 49 18 31 16  5 14 48 35 26 44 32 38
## [37] 25 40 30 23 33 36 12 45 43 20 50 19 42 46  8 39
```

``` r
cartas <- baralho[ordem,]
cartas
```

```
##      face   naipe valor
## 52    rei espadas    13
## 15   dois   copas     2
## 17 quatro   copas     4
## 7    sete   ouros     7
## 1      坟   ouros     1
## 11 valete   ouros    11
## 6    seis   ouros     6
## 51   dama espadas    12
## 4  quatro   ouros     4
## 9    nove   ouros     9
## 22   nove   copas     9
## 24 valete   copas    11
## 28   dois    paus     2
## 41   dois espadas     2
## 37 valete    paus    11
## 3     trì   ouros     3
## 2    dois   ouros     2
## 27     坟    paus     1
## 34   oito    paus     8
## 29    trì    paus     3
## 10    dez   ouros    10
## 21   oito   copas     8
## 13    rei   ouros    13
## 47   oito espadas     8
## 49    dez espadas    10
## 18  cinco   copas     5
## 31  cinco    paus     5
## 16    trì   copas     3
## 5   cinco   ouros     5
## 14     坟   copas     1
## 48   nove espadas     9
## 35   nove    paus     9
## 26    rei   copas    13
## 44  cinco espadas     5
## 32   seis    paus     6
## 38   dama    paus    12
## 25   dama   copas    12
## 40     坟 espadas     1
## 30 quatro    paus     4
## 23    dez   copas    10
## 33   sete    paus     7
## 36    dez    paus    10
## 12   dama   ouros    12
## 45   seis espadas     6
## 43 quatro espadas     4
## 20   sete   copas     7
## 50 valete espadas    11
## 19   seis   copas     6
## 42    trì espadas     3
## 46   sete espadas     7
## 8    oito   ouros     8
## 39    rei    paus    13
```


``` r
# Funcao para embaralhar
embaralhar <- function(baralho) {
  ordem <- sample(1:nrow(baralho))
  return(baralho[ordem,])
}
cartas <- embaralhar(baralho)
cartas
```

```
##      face   naipe valor
## 45   seis espadas     6
## 49    dez espadas    10
## 40     坟 espadas     1
## 52    rei espadas    13
## 44  cinco espadas     5
## 38   dama    paus    12
## 10    dez   ouros    10
## 31  cinco    paus     5
## 39    rei    paus    13
## 3     trì   ouros     3
## 13    rei   ouros    13
## 25   dama   copas    12
## 33   sete    paus     7
## 32   seis    paus     6
## 24 valete   copas    11
## 9    nove   ouros     9
## 27     坟    paus     1
## 36    dez    paus    10
## 4  quatro   ouros     4
## 15   dois   copas     2
## 26    rei   copas    13
## 5   cinco   ouros     5
## 30 quatro    paus     4
## 18  cinco   copas     5
## 2    dois   ouros     2
## 50 valete espadas    11
## 23    dez   copas    10
## 29    trì    paus     3
## 12   dama   ouros    12
## 1      坟   ouros     1
## 6    seis   ouros     6
## 11 valete   ouros    11
## 37 valete    paus    11
## 22   nove   copas     9
## 20   sete   copas     7
## 34   oito    paus     8
## 28   dois    paus     2
## 7    sete   ouros     7
## 19   seis   copas     6
## 42    trì espadas     3
## 16    trì   copas     3
## 14     坟   copas     1
## 35   nove    paus     9
## 43 quatro espadas     4
## 46   sete espadas     7
## 21   oito   copas     8
## 51   dama espadas    12
## 47   oito espadas     8
## 8    oito   ouros     8
## 48   nove espadas     9
## 41   dois espadas     2
## 17 quatro   copas     4
```
