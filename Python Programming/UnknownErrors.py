while True:
    user_input = input('enter your number:')

    try:
        number: float = float(user_input)
        print(f'You entered: {number}')
    except ValueError:
        print(f'The value you entered("{user_input}") is not a number.')
    except Exception as e:
        print('Program encountered an error')
        print(f'Type {type(e)}')
        print(f'Error: {e}')