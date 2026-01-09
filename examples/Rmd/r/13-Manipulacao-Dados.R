weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")
d <- data.frame(weight=weight, height=height, subject=subject)
head(d)

subject <- c("A", "B", "C", "D", "E", "F")
state <- c("RJ", "SP", "MG", "RJ", "SP", "MG")
ds <- data.frame(subject=subject, state=state)
head(d)

dsm <- merge(d, ds, by.x="subject", by.y="subject")
head(dsm)

library(dplyr)

result <- dsm |> 
    filter(height>1.7) |> 
    select(subject, weight, height) |> 
    arrange(height)
head(result)

result <- dsm |> 
    group_by(state) |>
    summarize(count = n(), height = mean(height))
head(result)
