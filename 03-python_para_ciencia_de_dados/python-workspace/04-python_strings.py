text = 'A single quote text to test Strings!'
text2 = "A double quote text to test Strings!"
multiline_text = '''Multi
Line
Text!!!'''
print('Type: ', type(text))
print('Type: ', type(text2))
print('Type: ', type(multiline_text))

# Get char from string:
print('Get 3rd char from string: ', text[2])
print('Get char with negative index: ', text[-1], text[-2])
print('Get slice of string: ', text[1:3])
print('Get slice of string from beginning until index 5: ', text[:6])
print('Get slice of string from index 3 to the end: ', text[3:])
print('Get slice of string from 1 until 4, step 2: ', text[1:6:2])

# String is unmutable!
print('Complete text: ', text)
text = text[:-2]
print('Text with 2 last items removed: ', text)
rtext = text[::-1]
rtext2 = str(rtext) + ' PLUS'
#rtext2.extend('**CHANGED**')
print('Original text: ', text)
print('Reverse coppied text: ', rtext)
print('Copy of reversed text concatenated:', rtext2)
print('String concatenated: ', text + rtext)
print('Duplicated text: ', text * 2)
print('Every 3 chars from beginning to end: ', text[::3])
print('Replacing chars: ', text.replace('i', 'I', 1))
print('An integer %i, a float %f, another string %s' % (1, .1, 'string'))
print('No need for tuples with just one value after %s' % '%')
print('Formatting string: ', 'Operation: {} + {} = {}'.format(1,2,1+2))