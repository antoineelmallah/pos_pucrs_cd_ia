# 1. Medidas de dispersão:

# Variância amostral
x <- c(1,2,3,4,5,6,7,8,9)
n <- length(x)
var(x) # função que calcula a variância amostral
mu <- mean(x) # média populacional
V <- sum((x - mu)^2)/(n-1) # calculo da variância amostral
sigma_quadrado <- sum(x^2)/n - mu^2 # calculo da variância populacional
#Variância populacional
var(x) * (n - 1)


# 1. Distribuições:

# 1.1. DISCRETAS:

# 1.1.1. Binomial 
# E(X) = n*p (esperança, valor esperado ou média)
# V(X) = n*p*(1-p) (variância)
# Probabilidade de x = 3 com n = 5  e prob. de sucesso = 0.9
dbinom(x = 3, size = 5, prob = .9)

# 1.1.2. Binomial negativa 
# moeda com p = 0.7 lançada até a obtenção de k = 4 caras. Prob de obter 5 caras
# X ~ BN(4,0.7)
# E(X) = k/p
# V(X) = k(1-p)/p²
dnbinom(x = 1, size = 4, prob = .7) # x = 4 + 1 = 5

# 1.1.3. Poisson
# dada a média de sucessos lambda, calcular a probabilidade de um número de sucessos 
# E(X) = lambda
# V(X) = lambda
# X ~ P(lambda), Onde lambda = numero médio de sucessos. x é o número de sucessos em questão
dpois(x = 8, lambda = 5)

# 1.1.4. Hipergeométrica
# De m + n objetos, selecionar m objetos. k é o número de sucessos de (m + n). 
# De N = m + n objetos, selecionar m objetos com k sucessos. Dos sucessos, selecionar x objetos
# E(X) = k*(R/N)
# V(X) = n*(R/N)*((N-R)/N))*(N-n)/(N-1)
dhyper(x = 2, m = 26, n = 26, k = 5)

# 1.2. CONTÍNUA:

# 1.2.1. Uniforme contínua (U(a,b))
# E(X) = (a + b)/2
# V(X) = (b - a)²/12
# a = min, b = max
dunif(x = 3, min = 2, max = 10)

# 1.2.2. Normal:
# - Probabilidade de um valor x:
dnorm(x, mean = 27, sd = 4)
# - Probabilidade para x < q:
pnorm(q = 30, mean = 27, sd = 2)
# - Probabilidade para x > q:
pnorm(q = 30, mean = 27, sd = 2, lower.tail = F)

# 1.2.3. Exponencial:
# E(X) = 1/lambda
# V(X) = 1/lambda²
pexp(1200, rate = .001) # x = 1200, lambda = .001

# 2. Intervalo de confiança:

# 2.1. Com sigma (desvio padrão populacional) conhecido:
n <- 10
m <- 1.63
sigma <- .05 # desvio padrão populacional
z <- abs(qnorm(p = .025)) # quantis para p = 5% (2.5% de cada lado)
e <- z*sigma/sqrt(n) # margem de erro
IC_inf <- m - e # limite inferior do intervalo de confiança
IC_sup <- m + e # limite superior do intervalo de confiança

# 2.2. Com sigma desconhecido:
n <- 10
m <- 1.63
s <- 0.05 # desvio padrão amostral
t <- abs(qt(.025, n-1)) # quantil da distribuição t de student para  p = 5% (2.5% de cada lado) e grau de liberdade 9
e <- t*s/sqrt(n) # margem de erro
IC_inf <- m - e
IC_sup <- m + e

# 2.3. Pela proporção:
n <- 125 # tamanho da amostra
p <- 25/n # proporção amostral
z <- abs(qnorm(0.025)) # quantil da normal que fatia a confiança de 95% (5% = 2.5% de cada lado)
e <- z*sqrt(p*(1-p)/n) # margem de erro
IC_inf <- p - e
IC_sup <- p + e

# 3. Teste de hipoteses
# Partes:
# 3.1. Definir H0 e H1, partições de teta
# 3.2. Qual o parâmetro? (proporção - pi, média - mi, variância - sigma ao quadrado, correlação - rô)
# 3.3. Valor
# 3.4. Desigualdades: 
# - Bilateral: (teta0 = teta1 ou teta0 != teta1)
# - Lateral superior: (teta0 <= teta1 ou teta0 > teta1)
# - Lateral inferior: (teta0 >= teta1 ou teta0 < teta1)
n <- 1520
p <- .05
pi0 <- .058
zt <- (p-pi0)/sqrt(pi0*(1-pi0)/n) # distância padronizada entre o observado e o teórico
# p-value é a distância probabilistica entre a estatística de teste e o PIR (parâmetro ideal de rejeição) mais próximo (grau de incerteza a favor de h0)
pnorm(q = zt) # Se for menor que o índice de significância (alfa), H1. Senão, H0

# x = numero de sucessos
# n = total de casos
# p = pi0 (valor de referência)
# alternative = "two.sided" (default), "greater" ou "less"
# prop.test(x = 9, n = 12, p = .5, alternative = 'greater', correct = F)
# Teste para distribuição binomial
binom.test(x = 9, n = 12, p = .5, alternative = 'greater')
# Teste para variância
var.test(x = )
# Teste para a média
t.test()

# 4. Estatística Bayesiana:

theta <- seq(0,1,.001)
a <- 5; b <- 5
a1 <- 3; b1 <- 9
a2 <- 10; b2 <- 3

priori <- dbeta(theta, a, b)
priori1 <- dbeta(theta, a1, b1)
priori2 <- dbeta(theta, a2, b2)

dist_priori <- data.frame(x = theta, y = priori, class = "beta(5,5)")
dist_priori1 <- data.frame(x = theta, y = priori1, class = "beta(3,9)")
dist_priori2 <- data.frame(x = theta, y = priori2, class = "beta(10,3)")

data_plot <- rbind(dist_priori, dist_priori1, dist_priori2)

# representação da incerteza
ggplot(data = data_plot) + geom_line(aes(x = x, y = y, color = class, linetype = class), size = 1.2)

# função verossimilhança
vero <- data.frame(x = theta, y = dbeta(theta, 31, 67), class = "verossimilhança")
ggplot(data = vero) + geom_line(aes(x = x, y = y, color = class, linetype = class), size = 1.2)

# função a posteriori
a_star <- 5+32
b_star <- 5+100-32
posteriori <- dbeta(theta, a_star, b_star)
dist_posteriori <- data.frame(x = theta, y = posteriori, class = "Posteriori")

data_plot1 <- rbind(dist_priori, dist_posteriori)
ggplot(data = data_plot1) + geom_line(aes(x = x, y = y, color = class, linetype = class), size = 1.2)

# 5. Modelos lineares

# 5.1. Modelo linear simples
data <- read.table('https://filipezabala.com/data/drinks.txt', head = T) # leitura dos dados
head(data) # ler o topo dos dados
x <- data$temp # valores de x = temperatura máxima do dia
y <- data$gar # valores de y = número de garrafas de bebida vendidas no dia (variável de interesse)
cor(x,y) # Correlação entre x e y
cor.test(x,y) # teste da correlação de Pearson com p-value para verificar se podemos ou não seguir com o modelo linear

fit <- lm(formula = y ~ x) # cálculo do coeficiente linear e angular da reta otimizada
summary(fit) # análise diagnostica do modelo, onde:
# Residuals: Informação sobre os erros entre o número de garrafas para x e y(x)
# Coefficients: 
# - (Intercept): coeficiente linear da reta
# - x: coeficiente angular da reta
# onde: 
# - St.Error é o erro padrão
# - t value é o (St.Error)/(Estimate)
# - Pr(>|t|) é o p-value para ajudar a decidir se os coeficientes ficam ou saem do modelo. Se p-value for baixo, manter o coeficiente. Caso contrário, removê-lo do modelo
# AJUSTE DO MODELO: No exemplo, como o p-value para o coeficiente linear foi maior que 5%, devemos corrigir o modelo, para ele passar pela origem:
fit0 <- lm(y ~ x - 1) # modelo com coef. linear igual a zero
summary(fit0)

# 5.2. Modelo linear múltiplo
library(readxl)
url1 <- 'http://archive.ics.uci.edu/ml/machine-learning-databases/00242/ENB2012_data.xlsx'
download.file(url = url1, destfile = 'temp.xlsx', mode = 'wb')
energy <- read_excel('temp.xlsx') # ler arquivo xlsx
str(energy) # dando uma olhada nas variáveis
summary(energy) # medidas de posição por coluna
sapply(X = energy, FUN = sd) # desvios padrão amostrais por coluna
sum(is.na(energy)) # verificar dados faltantes
VIM::aggr(energy) # verificar dados faltantes
pairs(x = energy) # matriz de dispersão. Interessante que as variáveis x sejam menos associadas entre si e que as variáveis x e y sejam mais associadas entre si para determinar a associação entre elas
fit0 <- lm(Y1 ~ X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8, data = energy) # modelo saturado pois estamos usando todas as variáveis simultanearmente
par(mfrow = c(2,2))
plot(fit0, witch = 1:4) # analise gráfica do fit0
plot(fit1, witch = 1:4) # analise gráfica do fit1, ajustado de fit0
summary(fit0) # escolher quais coeficientes devem sair da equação por terem p-value maiores que 5% 
fit1 <- step(fit0) # ajuste do modelo, removendo variáveis não relevantes de acordo com os p-values
summary(fit1)
stats::predict(object = fit1)

# 5.3. Regressão logística
# Para variáveis binárias ou dicotômicas

# 6. Series temporais:

# 6.1. ARIMA
x <- 1:10
length(x)
dx <- diff(x) # subtrai cada elemento do vetor pelo elemento anterior. O vetor resultante terá tamanho igual ao anterior menos 1
length(dx)

library(fpp2)
?auto.arima

fit <- auto.arima(WWWusage) # WWWusage é uma série temporal
plot(WWWusage)
plot(diff(WWWusage))
 plot(forecast(fit, h=20))
 
