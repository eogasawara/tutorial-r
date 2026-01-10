
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
##   [1] add_count             add1                 
##   [3] aggregate             AIC                  
##   [5] all.equal             ansari.test          
##   [7] anyDuplicated         aperm                
##   [9] ar.burg               ar.yw                
##  [11] as_tibble             as.array             
##  [13] as.character          as.data.frame        
##  [15] as.Date               as.difftime          
##  [17] as.dist               as.expression        
##  [19] as.factor             as.function          
##  [21] as.hclust             as.list              
##  [23] as.matrix             as.null              
##  [25] as.ordered            as.person            
##  [27] as.personList         as.POSIXct           
##  [29] as.POSIXlt            as.single            
##  [31] as.stepfun            as.table             
##  [33] as.ts                 autolayer            
##  [35] autoplot              Axis                 
##  [37] barplot               bartlett.test        
##  [39] BIC                   biplot               
##  [41] boxplot               by                   
##  [43] case.names            cdplot               
##  [45] chol                  chooseOpsMethod      
##  [47] coef                  common_by            
##  [49] confint               contour              
##  [51] cophenetic            cor.test             
##  [53] cut                   cycle                
##  [55] deltat                density              
##  [57] deriv                 deriv3               
##  [59] deviance              df.residual          
##  [61] diff                  diffinv              
##  [63] drop1                 duplicated           
##  [65] edit                  end                  
##  [67] fitted                fligner.test         
##  [69] format                formula              
##  [71] fortify               frequency            
##  [73] friedman.test         ftable               
##  [75] getCall               getInitial           
##  [77] ggplot_add            ggplot               
##  [79] glimpse               group_by_drop_default
##  [81] guide_gengrob         guide_geom           
##  [83] guide_merge           guide_train          
##  [85] guide_transform       head                 
##  [87] hist                  identify             
##  [89] image                 intersect            
##  [91] is_low_change         is.element           
##  [93] is.na<-               kappa                
##  [95] kernapply             knit_print           
##  [97] kruskal.test          ks.test              
##  [99] labels                lag                  
## [101] levels                lines                
## [103] makepredictcall       mean                 
## [105] median                merge                
## [107] model.frame           model.matrix         
## [109] monthplot             mood.test            
## [111] mosaicplot            mtfrm                
## [113] na.action             na.contiguous        
## [115] na.exclude            na.fail              
## [117] na.omit               nameOfClass          
## [119] napredict             naprint              
## [121] naresid               nobs                 
## [123] pacf                  pairs                
## [125] pattern_alpha         persp                
## [127] plot                  points               
## [129] ppr                   prcomp               
## [131] pretty                princomp             
## [133] print                 proj                 
## [135] prompt                qqnorm               
## [137] qr                    quade.test           
## [139] quantile              range                
## [141] relevel               relist               
## [143] reorder               residuals            
## [145] rev                   row.names            
## [147] row.names<-           rowsum               
## [149] sample_frac           sample_n             
## [151] scale_type            scale                
## [153] screeplot             selfStart            
## [155] seq                   sequence             
## [157] setdiff               setequal             
## [159] sew                   sigma                
## [161] solve                 sort_by              
## [163] sort                  sortedXyData         
## [165] spineplot             split                
## [167] split<-               stack                
## [169] start                 str                  
## [171] stripchart            subset               
## [173] summary               sunflowerplot        
## [175] symdiff               t                    
## [177] t.test                tail                 
## [179] tbl_ptype             terms                
## [181] text                  time                 
## [183] toString              transform            
## [185] type_sum              type.convert         
## [187] union_all             union                
## [189] unique                unstack              
## [191] update                var.test             
## [193] variable.names        weighted.mean        
## [195] weights               wilcox.test          
## [197] window                with                 
## [199] xtfrm                
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
