import numpy as np

a = np.matrix([[x for x in range(10*y, 10*y + 6)] for y in range(6)])

print(a)

print(a[0, 3:5]) # slicing primeira linha (0) colunas de 3 (inclusive) a 5 (exclusive)
print(a[4:, 4:]) # slicing a partir da linha 4 e coluna 4
print(a[:, 2])   # slicing coluna 2
print(a[2:2,:2]) # slicing de 2 em 2 nas linhas e colunas começando na linha 2 e na coluna 0

# substituir um slice da matriz
print(a)
a[4:, 4:] = np.matrix([[1,1],[1,1]])
a[:1] = 0
print(a)

b = np.tile([[4,3],[2,1],[4,3],[2,1]], 2) # repete a matriz n vezes
print(b)

