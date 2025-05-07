try:
    result: float = 10/ 0
    print(result)
except Exception as e:
    print(f'Error: {e}')

print('Done')

while True:
    try:
        user_input: str = input('Enter a number: ')
        print(f'10/ {user_input} = {10/float(user_input)}')
    except ZeroDivisionError:
        print(' You cannot divide by zero')
    except ValueError:
        print('Please enter a number:')
    except Exception as e:
        print(f'Error: {e}')