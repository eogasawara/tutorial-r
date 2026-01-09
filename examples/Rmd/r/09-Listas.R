weight <- c(60, 72, 57, 90, 95, 72) 
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
subject <- c("A", "B", "C", "D", "E", "F")

mybag <- list(weight, height, subject, 0, "a")
mybag

n <- length(mybag)
mybag[[n+1]] <- "b"
mybag

slice <- mybag[1]
slice
is.list(slice)

slice <- mybag[c(1,3)]
slice
is.list(slice)

is.vector(slice)

h <- mybag[[1]]
h

is.vector(h)
is.list(h)

mybag <- list(weight=weight, height=height, subject=subject, 
              valor=0, nome="a")
mybag

mybag$bmi <- mybag$weight/mybag$height^2
mybag[[4]] <- NULL
mybag$nome <- NULL
mybag
