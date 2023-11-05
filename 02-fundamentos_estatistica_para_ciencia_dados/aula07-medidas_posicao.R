# 2.3 - Medidas de posição ou localização:
# 2.3.1 - Mínimo e máximo:

# Xmin = x(1) e Xmax = x(n), ou seja, o mínimo é igual a primeira estatística de ordem e o máximo, à última estatística de ordem

hosp <- read.table('https://filipezabala.com/data/hospital.txt', header = T)
alturas <- hosp$height

min(alturas)
max(alturas)

range(alturas) # variação - retorna o mínimo e o máximo

# 2.3.2 - Média aritmética simples:
# importante a diferença entre a média amostral e a média total

media <- mean(alturas)

# 2.3.3 - Total:
# Podemos usar a média amostral para estimar o valor total

# 2.3.4 - Média quadrática:

# É o somatório do quadrado dos valores da amostra dividido pelo tamanho da amostra

# 2.3.5 - Moda:

# Variável de maior frequência
# Distribuição bimodal possui 2 modas
# Distribuição amodal não possui moda

# 2.3.6 - Separatrizes ou quantis:

# Mediana - não é influenciada por valores extremos:

x <- c(10, -4, 11, 12, 1, 5, 15)
n <- length(x)
pos <- (n+1)/2
sort(x)
median(x)

# Exemplo 2.30

x <- c(15, -4, 11, 12, 1, 5)
sort(x)
n <- length(x) # n é par. Portanto não existe madiana explícita
median(x) # mediana igual a (5 + 11) / 2

# Quantil: mediana, tercil, quartil, decil, percentil, etc

hosp <- read.table('https://filipezabala.com/data/hospital.txt', header = T)
quantile(hosp$height, probs = seq(0, 1, 1/2)) # mediana
quantile(hosp$height, probs = seq(0, 1, 1/3)) # tercil
quantile(hosp$height, probs = seq(0, 1, 1/4)) # quartil
quantile(hosp$height, probs = seq(0, 1, 1/10)) # decil

