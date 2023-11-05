x <- c(186,402,191,20,7,124)
rol <- sort(x) # crescente
rol <- sort(x, decreasing = T)

# Exercicio 2.2:
# a)
x <- c(10, -4, 5, 7, 1, 3, 9)
rol <- sort(x)
# b)
rol[4]

# Exercicio 2.3:

children_height <- read.table('https://filipezabala.com/data/hospital.txt', header = T)
class(children_height)
rol_children <- sort(children_height$children)
rol_height <- sort(children_height$height)

# Exemplo 2.13 (tabela de frequência univariada discreta)
hosp <- read.table('https://filipezabala.com/data/hospital.txt', header = T)
class(hosp)
dim(hosp)
head(hosp)
freq <- table(hosp$children) # gera a contagem por classe (frequência)
prop.table(freq) # gera a porcentagem por classe (frequência relativa)
cumsum(freq) # gera a frequência acumulada
round(cumsum(freq)/length(hosp$children), 2) # gera a frequência relativa acumulada
cumsum(rev(freq)) # gera a frequência acumulada inversa
round(cumsum(rev(freq)/length(hosp$children)), 2) # gera a frequência acumulada relativa inversa

# Exercício 2.4:
# a) quantitativa discreta
# b) 0
# c) 0
# d) 35
# e) 1
# f)

# 2.2.3 - Tabela da frequência univariada contínua

alturas <- read.table('https://filipezabala.com/data/hospital.txt', header = T)
table(alturas$height) # frequencia de uma variável contínua. Difícil de ler. Deve ser classificada

# Nesse caso, devemos agrupar os valores em "intervalos de classe"

# Formas de encontrar o número de intervalos de classe e amplitude de classe:

# 1) Sturges (usar para n < 200):
# pela fórmula:
n <- length(alturas$height)
A <- diff(range(alturas$height)) # amplitude dos dados (não da classe!)
ceiling(1 + log2(n)) # amplitude de classe
# ou pela função nclass.Sturges
num_classes <- nclass.Sturges(alturas$height)

# 2) Scott:
# pela fórmula:
n <- length(alturas$height)
s <- sd(alturas$height) # desvio padrão amostral
A <- diff(range(alturas$height)) # amplitude dos dados (não da classe!)
hSc <- 3.5 * s / n^(1/3) # número de intervalos de classe
ceiling(A/hSc) # (amplitude de classe) = (amplitude total) / (número de intervalos de classe)
# ou pela função nclass.scott
num_classes <- nclass.scott(alturas$height)

# 3) Freedman-Diaconis:
# pela fórmula:
n <- length(alturas$height)
Q <- quantile(alturas$height, c(1/4,3/4)) # primeiro e terceiro quartis
AI <- diff(as.numeric(Q)) # amplitude interquartílica - distância entre o primeiro e terceiro quartis
hFD <- 2 * AI / n^(1/3)
A <- diff(range(alturas$height))
ceiling(A/hFD)
# ou pela função nclass.FD:
kFD <- nclass.FD(alturas$height)
pretty(kFD)

# HISTOGRAMA = gráficos de representação de frequências
hist(alturas$height)
