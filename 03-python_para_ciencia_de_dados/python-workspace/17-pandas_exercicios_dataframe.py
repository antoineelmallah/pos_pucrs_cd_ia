import pandas as pd
import numpy as np
from pandas.plotting import scatter_matrix


df = pd.read_csv('examples/brain_size.csv', sep=';')

print(df.columns)

# 1)
print('valor medio de VIQ para toda a população: ', df.VIQ.mean())

# 2)
homens = df[df.Gender == 'Male']['Gender'].count()
mulheres = df[df.Gender == 'Female']['Gender'].count()
print('total de homens: ', homens)
print('total de mulheres: ', mulheres)

# 3)
gb =  np.log(df.groupby('Gender')['MRI_Count'].mean())

scatter_matrix(df[['Weight', 'Height', 'MRI_Count']])


