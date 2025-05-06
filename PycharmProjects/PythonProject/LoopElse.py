for i in range(3):
    print(f'iteration: {i}')
else:
    print('success')

i: int = 3

while i > 0:
    i -= 1
    print('ok')
    break
else:
    print('Success')