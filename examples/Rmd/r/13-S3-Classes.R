# Construtor para um poligono simples
polygon <- function(n) {
  if (n <= 0) stop("numero de vertices deve ser maior que zero")
  obj <- list(n = n)
  attr(obj, "class") <- "polygon"
  return(obj)
}

# Construtor para retangulo como subclasse de polygon
rectangle <- function(w, h) {
  obj <- polygon(4)
  obj$w <- w
  obj$h <- h
  class(obj) <- append("rectangle", class(obj))
  return(obj)
}

# Metodos print para as classes S3
print.polygon <- function(obj) {
  cat(obj$n, "\n")
}

print.rectangle <- function(obj) {
  cat(obj$w, ",", obj$h, "\n")
}

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

# Listando metodos disponiveis
methods(class = "default")

# Instanciando objetos e chamando metodos
a <- 3
p <- polygon(5)
r <- rectangle(3, 10)

print(a)
print(p)
print(r)

print(area(a))
print(area(p))
print(area(r))
