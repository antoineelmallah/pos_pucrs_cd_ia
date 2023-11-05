# Objetos do R

# Fatores (vetores categorizados)
x <- factor(letters[1:10])
x


# vetor
v <- c(1,2,3,4,5,6)
v
length(v)
v[1]
v[c(2,5)]
v1 <- 1/v
v1
z <- 2*v^2 + 1
z
logico <- vector() # cria um vetor lógico vazio
numerico <- numeric() # cria um vetor numérico vazio
logico[5] <- 5
numerico[3] <- 7
logico
numerico
x1 <- c(1:3, NA)
is.na(x1)
sum(is.na(x1))
mean(x1)
mean(x1, na.rm = T)
rev(v) # reverse
w <- c(1,1,1,1,2,3,4,3,2,2,2,1)
unique(w)
duplicated(w)
length(w) > length(unique(w))
t <- table(duplicated(w))
prop.table(t)
match(1:10, c(1,9,8,4))
1:10 %in% c(1,9,8,4)
rank(c(3,1,9,4,1,1)) # ordem de cada elemento na lista
sample(1:60, size = 6) # amostra de 6 valores aleatórios de um vetor de 60 elementos
set.seed(20); sample(1:60, size = 6) # quando precedido de set.seed, mantem a amostra igual

# matrizes
x <- 1:10
y <- x * 2
z <- 2*x + y^2
m1 <- cbind(x,y,z)
m2 <- rbind(x,y,z)
dim(m1)
dim(m2)
t(m2) # transposta de m2
all.equal(m1, t(m2)) # m1 = transposta de m2
identical(m1, t(m2)) # m1 = transposta de m2
class(m1)
class(m2)
m3 <- matrix(1:16, nrow = 4, ncol = 4)
m4 <- matrix(1:20, nrow = 4, ncol = 5, byrow = T)
m5 <- t(matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 3))
m6 <- matrix(0, nrow = 3, ncol = 2)
m7 <- m3 %*% m4 # produto de matrizes
m8 <- crossprod(t(m3), m4) # produto de matrizes mais eficiente
identical(m7, m8)

# Array - matrix multidimensional
a1 <- array(data = 1:30, dim = c(2,5,3))
dim(a1)
a1[1,3,2] # um elemento do array
a1[,,1]   # primeira matriz
a1[,1,]   # primeira coluna de cada matriz
a1[1,,]   # primeira linha de cada matriz
a1[1,,][2,2]

# Listas
l1 <- list(matriz1=m1, matriz2=m2, char=c('aa', 'bb'), array1=a1)
class(l1)
is.list(l1)
l1$matriz2
l1$char
l1[[2]]
identical(l1$matriz2, l1[[2]])
diag(l1$matriz2) # recupera a diagonal da matriz
lapply(l1, class) # aplica a função class a cada elemento da lista l1
names(l1) # recupera os nomes atribuidos a cada elemento da lista

# Listas como retorno de funções
x <- rnorm(100) # 100 números aleatórios de uma normal padrão
y <- rpois(100, 4) # 100 númerods aleatórios de uma distribuição Poisson com lambda igual a 4
plot(x,y)

fit <- lm(y ~ x) # modelo linear que retorna uma lista com várias informações
names(fit)
fit$coefficients

# dataframe - matriz que pode conter dados de classes diferentes
h <- read.table('https://filipezabala.com/data/hospital.txt', header = T)
class(h)
dim(h)
head(h)
summary(h)
str(h)

h.matrix = as.matrix(h) # convertendo o dataframe para matriz
head(h.matrix)
lapply(h.matrix, class)

# Conversão de data
d <- as.Date('11/3/1981', format = '%d/%m/%y')
months(d)
weekdays(d)
quarters(d)
Sys.Date() - d
