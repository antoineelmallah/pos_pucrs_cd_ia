import pandas as pd

# pra esse conjunto de dados, quando aparece '.' (ponto), quer dizer que o dado não está disponível. Informamos isso ao pandas pelo na_values 
# test = pd.read_csv('examples/brain_size.csv', sep=';', na_values='.')
test = pd.read_csv('https://raw.githubusercontent.com/scipy-lectures/scientific-python-lectures/main/packages/statistics/examples/brain_size.csv', sep=';', na_values='.')

print(test)

