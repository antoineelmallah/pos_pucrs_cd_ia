# operações algébricas
2+4*3
2+6
3*5
(2+4)*3

# Funções matemáticas
pi
cos(c(0,30,45,60)*pi/180)
MASS::fractions(c(0,30,45,60)*pi/180)

# potenciação
2^3
2**3

# Sequências regulares
1:10
10:1
-(10:1)
-10:1
seq(from = 0,to = 100, by = 5)

# Repetições
rep(1:4, times = 2)
rep(1:4, each = 2)
rep(1:4, length.out = 10)

# Atribuições
x <- 2
x <- 5 * x
y = 4
(y=x*y^2)
3 -> z -> x
x <- y <- z <- 3

# Loops
for (i in 1:10) print(i) 
for (i in seq(1,10,2)) {
  print(i)
}
x <- 0
while (x < 5) { x <- x + 1; print(x) }
x <- 0
while (x < 5) { x <- x + 1; if (x == 3) break; print(x) }
x <- 0
while (x < 5) { x <- x + 1; if (x == 3) next; print(x) }

# Vetores
v = c(2,0,1,2,4,2)
2*v
v^2
v+2
v[3]
v[-3]
v[c(3,5)]
length(v)
letters[1:20]
letters
letters[5:7]
LETTERS
noquote(letters)

# Ajuda
?length

# Frações
MASS::fractions(0.5) # MASS é um pacote que contém a função fractions
library(MASS) # importa o pacote MASS
fractions(1.2345) # após o pacote importado, podemos invocar diretamente a função

# Operações com String
substr('abcdef', 2, 4)
x <- c('Chimarrão', 'Gaita', 'Bah')
strsplit(x, 'a')
tolower(x)

# Operações com o sistema de arquivos
getwd()
setwd('~/') # setar o wd
dir() # lista os diretórios do wd
