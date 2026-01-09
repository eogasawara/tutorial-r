weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

d <- data.frame(weight=weight, height=height, subject=subject)
head(d)

sort(d$height)

order(d$height)

o <- order(d$height)
ds <- d[o,]
head(ds)
