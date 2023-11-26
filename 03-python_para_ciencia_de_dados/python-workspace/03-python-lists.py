colors = ['red', 'blue', 'green', 'white', 'black']
print('Type: ', type(colors))

# Get elements from list:
print('Get 3rd element from list: ', colors[2])
print('Get element with negative index: ', colors[-1], colors[-2])
print('Get slice of list: ', colors[1:3])
print('Get slice of list from beginning until index 2: ', colors[:2])
print('Get slice of list from index 3 to the end: ', colors[3:])
print('Get slice of list from 1 until 4, step 2: ', colors[1:4:2])

# Mutating lists
print('Complete list: ', colors)
colors[2:4] = ['grey', 'purple']
print('Mutated list: ', colors)
colors.append('cyan')
print('Item added: ', colors)
print('Item removed at last index: ', colors.pop())
print('List with last item removed: ', colors)
colors.extend(['yellow', 'orange'])
print('List extended: ', colors)
colors = colors[:-2]
print('List with 2 last items removed: ', colors)
rcolors = colors[::-1]
rcolors2 = list(rcolors)
rcolors2.extend(['dark blue', 'light yellow'])
print('Original list: ', colors)
print('Reverse coppied list: ', rcolors)
print('Copy of reversed list modified:', rcolors2)
print('Lists concatenated: ', colors + rcolors)
print('Duplicated list: ', colors * 2)

# Lists may have different type items
print('List with different type items: ', [-1, 1+2j, 'item3', True])

