
``` r
# Construtor para um poligono simples
polygon <- function(n) {
  if (n <= 0) stop("numero de vertices deve ser maior que zero")
  obj <- list(n = n)
  attr(obj, "class") <- "polygon"
  return(obj)
}
```


``` r
# Construtor para retangulo como subclasse de polygon
rectangle <- function(w, h) {
  obj <- polygon(4)
  obj$w <- w
  obj$h <- h
  class(obj) <- append("rectangle", class(obj))
  return(obj)
}
```


``` r
# Metodos print para as classes S3
print.polygon <- function(obj) {
  cat(obj$n, "\n")
}

print.rectangle <- function(obj) {
  cat(obj$w, ",", obj$h, "\n")
}
```


``` r
# Generic e metodos para area
area <- function(obj) {
  UseMethod("area")
}

area.default <- function(obj) {
  return(0)
}

area.rectangle <- function(obj) {
  return(obj$w * obj$h)
}
```


``` r
# Listando metodos disponiveis
methods(class = "default")
```

```
##   [1] add_count             add1                  aggregate             AIC                   all.equal            
##   [6] ansari.test           anyDuplicated         aperm                 ar.burg               ar.yw                
##  [11] as_tibble             as.array              as.character          as.data.frame         as.Date              
##  [16] as.difftime           as.dist               as.expression         as.factor             as.function          
##  [21] as.hclust             as.list               as.matrix             as.null               as.ordered           
##  [26] as.person             as.personList         as.POSIXct            as.POSIXlt            as.single            
##  [31] as.stepfun            as.table              as.ts                 autolayer             autoplot             
##  [36] Axis                  barplot               bartlett.test         BIC                   biplot               
##  [41] boxplot               by                    case.names            cdplot                chol                 
##  [46] chooseOpsMethod       coef                  common_by             confint               contour              
##  [51] cophenetic            cor.test              cut                   cycle                 deltat               
##  [56] density               deriv                 deriv3                deviance              df.residual          
##  [61] diff                  diffinv               drop1                 duplicated            edit                 
##  [66] end                   fitted                fligner.test          format                formula              
##  [71] fortify               frequency             friedman.test         ftable                getCall              
##  [76] getInitial            ggplot_add            ggplot                glimpse               group_by_drop_default
##  [81] guide_gengrob         guide_geom            guide_merge           guide_train           guide_transform      
##  [86] head                  hist                  identify              image                 intersect            
##  [91] is_low_change         is.element            is.na<-               kappa                 kernapply            
##  [96] knit_print            kruskal.test          ks.test               labels                lag                  
## [101] levels                lines                 makepredictcall       mean                  median               
## [106] merge                 model.frame           model.matrix          monthplot             mood.test            
## [111] mosaicplot            mtfrm                 na.action             na.contiguous         na.exclude           
## [116] na.fail               na.omit               nameOfClass           napredict             naprint              
## [121] naresid               nobs                  pacf                  pairs                 pattern_alpha        
## [126] persp                 plot                  points                ppr                   prcomp               
## [131] pretty                princomp              print                 proj                  prompt               
## [136] qqnorm                qr                    quade.test            quantile              range                
## [141] relevel               relist                reorder               residuals             rev                  
## [146] row.names             row.names<-           rowsum                sample_frac           sample_n             
## [151] scale_type            scale                 screeplot             selfStart             seq                  
## [156] sequence              setdiff               setequal              sew                   sigma                
## [161] solve                 sort_by               sort                  sortedXyData          spineplot            
## [166] split                 split<-               stack                 start                 str                  
## [171] stripchart            subset                summary               sunflowerplot         symdiff              
## [176] t                     t.test                tail                  tbl_ptype             terms                
## [181] text                  time                  toString              transform             type_sum             
## [186] type.convert          union_all             union                 unique                unstack              
## [191] update                var.test              variable.names        weighted.mean         weights              
## [196] wilcox.test           window                with                  xtfrm                
## see '?methods' for accessing help and source code
```


``` r
# Instanciando objetos e chamando metodos
a <- 3
p <- polygon(5)
r <- rectangle(3, 10)

print(a)
```

```
## [1] 3
```

``` r
print(p)
```

```
## 5
```

``` r
print(r)
```

```
## 3 , 10
```

``` r
print(area(a))
```

```
## [1] 0
```

``` r
print(area(p))
```

```
## [1] 0
```

``` r
print(area(r))
```

```
## [1] 30
```
