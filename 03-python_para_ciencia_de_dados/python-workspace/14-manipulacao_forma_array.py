import numpy as np

# ravel:

a = np.array([[1,2,3], [4,5,6]])
print(a.ravel())
print(a.T)
print(a.T.ravel())

# flatten

print(a.flatten())
print(a.T.flatten())

# reshape

print(a.shape)
print(a.flatten().reshape((3,2)))
print(a.flatten().reshape((3,-1))) # -1 é inferido