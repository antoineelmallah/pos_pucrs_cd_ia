# 2.4.1 - Amplitude (A = max X - min X)

temp <- c(6,4,9,20,7,12)
# duas formas de calcular a amplitude dos dados do vetor temp
A <- max(temp) - min(temp)
A <- diff(range(temp))

temp <- c(6,-4,9,20,7,12) # contendo valores negativos
A <- diff(range(temp))

# 2.4.2 - Variância
# é a média quadrática da distância dos dados em relação à média
# variância universal ou populacional = em relação à média universal
# variância amostral =  em relação à média amostral

x <- c(186,402,191,20,7,124)
var.p <- var(x)*(5/6)
var.a <- var(x)

teste <- c(1,10,50,3,5,20,33,8,1,5)
soma <- sum(teste)
media <- soma/length(teste)
variancia <- sum((teste - media)^2)/length(teste)
var(teste) * (9/10)
