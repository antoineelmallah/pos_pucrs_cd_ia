import numpy as np
import matplotlib.pyplot as plt
import math

#image = np.random.rand(30, 30)
#data = [[x * y * math.sin(x*y) / 300 * 300 for x in range(300)] for y in range(300)]
data = [[math.sin(x/y) if y != 0 else 0 for x in range(300)] for y in range(300)]
image = np.matrix(data=data)
plt.imshow(image, cmap=plt.cm.hot)
plt.colorbar()
plt.show()