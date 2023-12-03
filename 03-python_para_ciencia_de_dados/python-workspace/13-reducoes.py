import numpy as np

#### 1. soma:

x = np.array([1,2,3,4])
print(np.sum(x))
print(x.sum())

# soma pelo eixo
x = np.array([[1,1],[2,2]])
print('Soma colunas: ', x.sum(axis=0))
print('Soma linhas: ', x.sum(axis=1))

#### 2. min, max:

x = np.array([1,1,1,1,2,3,4,5,6,6,6,6,6])
print('Valor minimo: ', x.min())
print('Valor máximo: ', x.max())
print('Indice do valor minimo: ', x.argmin()) # retorna o índice de um dos valores mínimos
print('Indice do valor máximo: ', x.argmax()) # retorna o índice de um dos valores máximos

#### 3. operações lógicas:

x = np.array([1,2,3,4,5,6])
print(np.any(x > 4)) # verifica se algum valor no vetor é true
print(np.all(x > 4)) # verifica se TODOS os valores no vetor são true

#### 4. estatística:

x = np.array([1,2,3,1])
y = np.array([[1,2,3],[5,6,1]])
print(x.mean())
print(np.median(x))
print(np.median(y, axis=-1))
print(x.std()) # desvio padrão populacional
