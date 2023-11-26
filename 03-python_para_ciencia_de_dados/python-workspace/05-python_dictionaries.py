dict = {'one': 1, 'two': 2}

print('Dict: ', dict)
print('Dict values: ', dict['one'], dict['two'])
print('Dict keys: ', dict.keys())
print('Dict values: ', dict.values())
print('Is "one" in keys?: ', 'one' in dict)
dict['tree'] = 3
print('Adding element: ', dict)
dict.pop('tree')
print('Removing element: ', dict)