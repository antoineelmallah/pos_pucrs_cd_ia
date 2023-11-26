s1 = set((5,5,5,1,10, 11,1,1,2,2,2,2,3,3,3,4))
s2 = {1,2,3,12,13}
print(type(s1), type(s2))
print('Set is unordered and unique: ', s1)
print('Difference between sets: ', s1.difference(s2))
print('Sets union: ', s1.union(s2))
print('Sets intersection: ', s1.intersection(s2))
print('AAAA'.lower())