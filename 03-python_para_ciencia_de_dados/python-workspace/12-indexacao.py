import numpy as np

# Indexação com booleanos

a = np.random.randint(0, 21, 15) # min 0, max 21 num. elementos 15

mask = (a % 3 == 0)

print(mask)

extract_from_a = a[mask] # extrai um sub array pela máscara

print(a)
print(extract_from_a)

# Indexação com indices

a = np.array([[1,2,3,4,5,6,7,8,9],[9,8,7,6,5,4,3,2,1]]) # min 0, max 21 num. elementos 15

print(a.shape)

mask = np.array([[1,2],[1,2]])

print(a[mask])