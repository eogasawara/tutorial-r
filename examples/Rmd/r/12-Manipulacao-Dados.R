# Data frame base para exemplos
weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")
d <- data.frame(weight=weight, height=height, subject=subject)
head(d)

# Dados complementares para merge
subject <- c("A", "B", "C", "D", "E", "F")
state <- c("RJ", "SP", "MG", "RJ", "SP", "MG")
ds <- data.frame(subject=subject, state=state)
head(d)

# Mesclando data frames por chave
dsm <- merge(d, ds, by.x="subject", by.y="subject")
head(dsm)

# Carregando dplyr
library(dplyr)

# Pipeline com filtro, selecao e ordenacao
result <- dsm |> 
    filter(height>1.7) |> 
    select(subject, weight, height) |> 
    arrange(height)
head(result)

# Agregacao por grupo
result <- dsm |> 
    group_by(state) |>
    summarize(count = n(), height = mean(height))
head(result)
