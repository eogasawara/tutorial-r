#funções gráficas qplot

library(ggplot2)

# deixei a instalação comentada, mas para rodar tire o comentário ...
#install.packages("ggplot2")

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x

y <- x^3
y

qplot(x, y)

# criar uma função para jogada 
dado <- 1:6
dados <- sample(dado, size = 2, replace = TRUE)
sum(dados)

jogada <-  function() {
  dado <- 1:6
  dados <- sample(dado, size = 2, replace = TRUE)
  return(sum(dados))
}

simulacao_minima <- replicate(30, jogada())
qplot(simulacao_minima, binwidth =1)
mean(simulacao_minima)

simulacao_completa <- replicate(10000, jogada())
qplot(simulacao_completa, binwidth =1)
mean(simulacao_completa)

#?sqrt

#slide 11
require(stats) # for spline
require(graphics)
xx <- -9:9
plot(xx, sqrt(abs(xx)),  col = "red")
lines(spline(xx, sqrt(abs(xx)), n=101), col = "pink")

#?sample

simulacao = replicate(10000, 
                      sample(2:12, 
                      replace=TRUE, 
                      prob=c(1,2,3,4,5,6,5,4,3,2,1)/36))
qplot(simulacao, binwidth=1)
mean(simulacao)
