# Operacoes basicas no console
1 + 2
# Sequencia de inteiros
1:10
# Criando e usando uma variavel
a <- 1
a
a + 2
# Vetor e indexacao
dado <- 1:6
dado
dado[1]
dado[6]
# Operacao vetorizada
dado - 1

# Operacoes aritmeticas basicas
3 + 2
3 ^ 2
3 / 2
3 %% 2

# Multiplicacao escalar e elemento a elemento
dado <- 1:6
2 * dado
dado * dado

# Arredondamento e media
round(3.1415)
round(3.1415, 2)
#?round
mean(dado)
round(mean(dado))

# Amostragem sem e com reposicao
sample(x = dado, size = 2)
sample(dado, 2)
sample(x=dado, size=2, replace=TRUE)
#?sample
# Consultando argumentos da funcao
args(sample)

# Fixando semente para reproducibilidade
set.seed(1)
sample(x=dado, size=2, replace=TRUE)
sample(replace=TRUE, x=dado, size=2)
sample(dado, 2, TRUE)
