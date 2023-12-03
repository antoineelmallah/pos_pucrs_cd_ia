import numpy as np
import pandas as pd

t = np.linspace(-6,6,20)
sin_t = np.sin(t)
cos_t = np.cos(t)

# construtor python que permite criar uma associação entre os dados de entrada e o data frame através de um dicionário
df = pd.DataFrame({'t': t,'sin': sin_t, 'cos': cos_t, 'cos_positive': cos_t > 0})

# imprimir as colunas do data frame
print(df.columns)

# uma coluna apenas
print(df.sin)

# imprimir apenas valores do dataframe onde o valor dos senos é maior que zero
print(df[df.sin > 0])

print('Sum of sin values where cosine is positive: ',df[df.cos_positive == True]['sin'].sum())

# dividir um dataframe em valores de variáveis categóricas
#group_by_cos_positive = df.groupby('cos_positive')
#for group, value in group_by_cos_positive.sin:
#    print((group, value))

# exibe informações estatísticas sobre os dados
print(pd.DataFrame.describe(df))