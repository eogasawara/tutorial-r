
``` r
# Carregando um objeto .rda pela URL
u <- "https://raw.githubusercontent.com/eogasawara/tutorial-r/main/examples/baralho.rda"
load(url(u))
head(baralho)
```

```
##     face naipe
## 1     ás ouros
## 2   dois ouros
## 3   três ouros
## 4 quatro ouros
## 5  cinco ouros
## 6   seis ouros
```


``` r
# Salvando e removendo o objeto do ambiente
save(baralho, file="baralho.rda")
rm(baralho)
```


``` r
# Recarregando o arquivo salvo localmente
load(file="baralho.rda")
head(baralho)
```

```
##     face naipe
## 1     ás ouros
## 2   dois ouros
## 3   três ouros
## 4 quatro ouros
## 5  cinco ouros
## 6   seis ouros
```


``` r
# Criando uma coluna de indice
baralho$idx <- 1:52
head(baralho)
```

```
##     face naipe idx
## 1     ás ouros   1
## 2   dois ouros   2
## 3   três ouros   3
## 4 quatro ouros   4
## 5  cinco ouros   5
## 6   seis ouros   6
```


``` r
# Alterando valores pontuais na coluna
baralho$idx[c(1,3,5)] <- 1
head(baralho)
```

```
##     face naipe idx
## 1     ás ouros   1
## 2   dois ouros   2
## 3   três ouros   1
## 4 quatro ouros   4
## 5  cinco ouros   1
## 6   seis ouros   6
```

``` r
baralho$idx[4:6] <- baralho$idx[4:6] + 1
head(baralho)
```

```
##     face naipe idx
## 1     ás ouros   1
## 2   dois ouros   2
## 3   três ouros   1
## 4 quatro ouros   5
## 5  cinco ouros   2
## 6   seis ouros   7
```


``` r
# Selecionando linhas com logica booleana
baralho$idx <- 1:52
vec <- (baralho$idx %% 2 == 1)
idx <- baralho$idx[vec]
idx
```

```
##  [1]  1  3  5  7  9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 43 45 47 49 51
```

``` r
cartas <- baralho[vec,]
cartas
```

```
##      face   naipe idx
## 1      ás   ouros   1
## 3    três   ouros   3
## 5   cinco   ouros   5
## 7    sete   ouros   7
## 9    nove   ouros   9
## 11 valete   ouros  11
## 13    rei   ouros  13
## 15   dois   copas  15
## 17 quatro   copas  17
## 19   seis   copas  19
## 21   oito   copas  21
## 23    dez   copas  23
## 25   dama   copas  25
## 27     ás    paus  27
## 29   três    paus  29
## 31  cinco    paus  31
## 33   sete    paus  33
## 35   nove    paus  35
## 37 valete    paus  37
## 39    rei    paus  39
## 41   dois espadas  41
## 43 quatro espadas  43
## 45   seis espadas  45
## 47   oito espadas  47
## 49    dez espadas  49
## 51   dama espadas  51
```


``` r
# Comparacoes e operador %in%
1 > 2
```

```
## [1] FALSE
```

``` r
1 > c(0, 1, 2)
```

```
## [1]  TRUE FALSE FALSE
```

``` r
c(1, 2, 3) == c(3, 2, 1)
```

```
## [1] FALSE  TRUE FALSE
```

``` r
1 %in% c(3, 4, 5)
```

```
## [1] FALSE
```

``` r
c(1, 2, 3) %in% c(3, 4, 5)
```

```
## [1] FALSE FALSE  TRUE
```


``` r
# Filtros compostos com AND e OR
x <- baralho$face == "dama" & baralho$naipe == "espadas"
head(baralho[x,])
```

```
##    face   naipe idx
## 51 dama espadas  51
```

``` r
x <- baralho$face == "dama" | baralho$naipe == "espadas"
head(baralho[x,])
```

```
##    face   naipe idx
## 12 dama   ouros  12
## 25 dama   copas  25
## 38 dama    paus  38
## 40   ás espadas  40
## 41 dois espadas  41
## 42 três espadas  42
```


``` r
# Tratando valores ausentes (NA)
1 + NA
```

```
## [1] NA
```

``` r
NA == 1
```

```
## [1] NA
```

``` r
c(NA, 1:50)
```

```
##  [1] NA  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
## [42] 41 42 43 44 45 46 47 48 49 50
```

``` r
mean(c(NA, 1:50))
```

```
## [1] NA
```

``` r
mean(c(NA, 1:50), na.rm = TRUE)
```

```
## [1] 25.5
```


``` r
# Filtrando com condicao simples
filtro <- baralho$valor < 3
baralho[filtro, ]
```

```
## [1] face  naipe idx  
## <0 rows> (or 0-length row.names)
```

``` r
baralho[baralho$valor < 3,]
```

```
## [1] face  naipe idx  
## <0 rows> (or 0-length row.names)
```


``` r
# Embaralhando as linhas
ordem <- sample(1:nrow(baralho))
ordem
```

```
##  [1] 46 38 19 17  8 39  6 33 13 11 50  1  4  3 45 43 37 25 30 18 12  9  2 52 29 40 51 16 20  7 35 23 27 26 10 28 31 34 42 21 22
## [42] 44 41 47 32  5 24 36 14 15 48 49
```

``` r
cartas <- baralho[ordem,]
cartas
```

```
##      face   naipe idx
## 46   sete espadas  46
## 38   dama    paus  38
## 19   seis   copas  19
## 17 quatro   copas  17
## 8    oito   ouros   8
## 39    rei    paus  39
## 6    seis   ouros   6
## 33   sete    paus  33
## 13    rei   ouros  13
## 11 valete   ouros  11
## 50 valete espadas  50
## 1      ás   ouros   1
## 4  quatro   ouros   4
## 3    três   ouros   3
## 45   seis espadas  45
## 43 quatro espadas  43
## 37 valete    paus  37
## 25   dama   copas  25
## 30 quatro    paus  30
## 18  cinco   copas  18
## 12   dama   ouros  12
## 9    nove   ouros   9
## 2    dois   ouros   2
## 52    rei espadas  52
## 29   três    paus  29
## 40     ás espadas  40
## 51   dama espadas  51
## 16   três   copas  16
## 20   sete   copas  20
## 7    sete   ouros   7
## 35   nove    paus  35
## 23    dez   copas  23
## 27     ás    paus  27
## 26    rei   copas  26
## 10    dez   ouros  10
## 28   dois    paus  28
## 31  cinco    paus  31
## 34   oito    paus  34
## 42   três espadas  42
## 21   oito   copas  21
## 22   nove   copas  22
## 44  cinco espadas  44
## 41   dois espadas  41
## 47   oito espadas  47
## 32   seis    paus  32
## 5   cinco   ouros   5
## 24 valete   copas  24
## 36    dez    paus  36
## 14     ás   copas  14
## 15   dois   copas  15
## 48   nove espadas  48
## 49    dez espadas  49
```


``` r
# Funcao para embaralhar o baralho
embaralhar <- function(baralho) {
  ordem <- sample(1:nrow(baralho))
  return(baralho[ordem,])
}
cartas <- embaralhar(baralho)
cartas
```

```
##      face   naipe idx
## 45   seis espadas  45
## 8    oito   ouros   8
## 5   cinco   ouros   5
## 6    seis   ouros   6
## 10    dez   ouros  10
## 26    rei   copas  26
## 34   oito    paus  34
## 28   dois    paus  28
## 4  quatro   ouros   4
## 9    nove   ouros   9
## 1      ás   ouros   1
## 27     ás    paus  27
## 12   dama   ouros  12
## 37 valete    paus  37
## 11 valete   ouros  11
## 44  cinco espadas  44
## 49    dez espadas  49
## 25   dama   copas  25
## 43 quatro espadas  43
## 47   oito espadas  47
## 35   nove    paus  35
## 30 quatro    paus  30
## 36    dez    paus  36
## 23    dez   copas  23
## 14     ás   copas  14
## 15   dois   copas  15
## 33   sete    paus  33
## 2    dois   ouros   2
## 48   nove espadas  48
## 17 quatro   copas  17
## 40     ás espadas  40
## 39    rei    paus  39
## 16   três   copas  16
## 32   seis    paus  32
## 19   seis   copas  19
## 51   dama espadas  51
## 24 valete   copas  24
## 52    rei espadas  52
## 42   três espadas  42
## 3    três   ouros   3
## 29   três    paus  29
## 38   dama    paus  38
## 7    sete   ouros   7
## 13    rei   ouros  13
## 46   sete espadas  46
## 50 valete espadas  50
## 22   nove   copas  22
## 18  cinco   copas  18
## 21   oito   copas  21
## 41   dois espadas  41
## 20   sete   copas  20
## 31  cinco    paus  31
```
