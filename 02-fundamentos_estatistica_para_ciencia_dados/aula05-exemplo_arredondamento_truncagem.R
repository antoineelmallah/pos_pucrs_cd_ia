# Arredondamento
options(digits = 10)
for (i in 6:-2) {
  print(round(153.654321, digits = i))
}

# Usando o pacote plyr
plyr::round_any(153.64321, .01, round)
plyr::round_any(153.64321, .0001, floor)
plyr::round_any(153.64321, 1, round)
plyr::round_any(153.64321, 100, round)
