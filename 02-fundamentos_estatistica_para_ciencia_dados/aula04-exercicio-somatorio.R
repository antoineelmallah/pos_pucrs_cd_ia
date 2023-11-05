library(coronavirus)

coronavirus::update_dataset(silence = F)
dim(coronavirus)
?data
class(coronavirus)
head(coronavirus)

# a. Obtenha a soma de casos (cases) registrados ao longo de todo o período.
sum(coronavirus$cases)

# b. Obtenha a soma ao quadrado de casos registrados ao longo de todo o período.
class(coronavirus$cases)
sum(coronavirus$cases ^ 2)

# c. Obtenha a soma de casos registrados ao longo de todo o período dividido por tipo (type).
class(coronavirus$type)
sum(coronavirus$cases/as.numeric(coronavirus$type))
data(coronavirus)
unique(coronavirus$type)
options(digits = 7)
?by
by(coronavirus$cases, coronavirus$type, sum)

# d. Considerando a variável 'X': ‘número de casos registrados’ em nrow(coronavirus) linhas do banco de dados, represente os itens a. e b. utilizando a notação de somatório.