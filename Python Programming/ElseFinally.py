
user_input: str = 'ab'

try:
    result: float = 1 / float(user_input)
    print(f'1 / {user_input} = {result}')
except ValueError:
    print('You cannot use: {user_input} as a value')
except ZeroDivisionError:
    print('Don\'t be silly, you vannot divide bo 0')
else:
    print('success')
finally:
    print('FINALLY, I am always executed')