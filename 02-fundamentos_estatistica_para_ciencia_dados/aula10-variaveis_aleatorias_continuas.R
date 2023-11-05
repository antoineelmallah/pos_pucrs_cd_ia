# função densidade de probabilidade:
# Condições:
# 1) f(x) >= 0, para todo x
# 2) Integral de f entre menos infinito e mais infinito é 1

# Integral:
f <- function(x) (-46875/19652)*(x^2-3.36*x+2.36)
integrate(f, 1,2.36)

f <- function(x) (1/(10000*(2*3.1415)^(1/2)))*exp((-1/2)*((x-105000)/10000)^2)
integrate(f,90000, 125000)

f <- function(x) (1/1000)*exp((-1)*x/1000)
integrate(f,0,1200)

########################################
# Distribuição normal univariada:
########################################
dnorm() # distribuição normal
curve(dnorm(x), -3, 3)
pnorm() # distribuição normal acumulada
curve(pnorm(x), -3,3)

qt(0.025, 9)

# função densidade de probabilidade em determinado ponto:
dnorm(x, mean = 27, sd = 4)

# para encontrar a probabilidade menor que q:
# lower.tail = TRUE -> probabilidade de X <= q
# lower.tail = FALSE -> probabilidade de X >= q
pnorm(q = 33, mean = 27, sd = 4, lower.tail = TRUE, log.p = FALSE)

# exercicio 3.20
# a)
pnorm(q = 33, mean=27, sd=4, lower.tail = FALSE)
# b)
lt_32 <- pnorm(q = 32, mean = 27, sd = 4, lower.tail = TRUE)
gt_40 <- pnorm(q = 40, mean = 27, sd = 4, lower.tail = FALSE)
x <- 1 - (lt_32 + gt_40) 
# c) R: x = 28.24
pnorm(q = 28.24, mean = 27, sd = 4, lower.tail = TRUE)

#exercicio 3.21
# a)
pnorm(q = 1, mean = 1.45, sd = .15)
# b)
pnorm(q = 1, mean = 1.45, sd = .15, lower.tail = FALSE)
# c)
lt_1 <- pnorm(q = 1, mean = 1.45, sd = .15)
gt_2 <- pnorm(q = 2, mean = 1.45, sd = .15, lower.tail = FALSE)
x <- 1 - (lt_1 + gt_2)
# d)
1 - pnorm(q = 2, mean = 1.45, sd = .15)

phyper()
