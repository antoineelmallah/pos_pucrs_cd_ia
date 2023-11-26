import numpy as np

# vetorização (operações são aplicadas a cada item do vetor criado)
print('vetorização: ', np.arange(10) ** 2)

# criação de vetor no numpy
a = np.array([1,2,3,4,5])
print(a ** 3)
print('dimensões: ', a.ndim)
print('formato: ', a.shape)
print('tamanho: ', len(a))

# criação de matriz no numpy
a = np.array([[1,2,3,4,5], [6,7,8,9,1]]) # cada vetor é uma linha da matriz
print(a ** 3)
print('dimensões: ', a.ndim)
print('formato: ', a.shape) # matriz 2x5
print('tamanho: ', len(a))

# gerar números entre inicio, fim e o número de pontos contando os extremos
print(np.linspace(3, 9, 7))

# gerar matrizes
np.ones((3,3)) # gera uma matriz quadrada de ordem 3 contendo valores 1
np.zeros((2,2)) # matriz quadrada de ordem 2 contendo somente zeros
np.eye(3) # matriz diagonal de ordem 3 contendo somente 1 nos valores da diagonal principal
np.diag(np.array([1,2,3,4])) # matriz diagonal de ordem 4 contendo 1,2,3,4 em sua diagonal principal 