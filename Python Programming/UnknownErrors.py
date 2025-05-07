while True:
    user_input = input('enter your number:')

    try:
        number: float = float(user_input)
        print(f'You entered: {number}')
    except Exception as e:
        print('Program encountered an error')
        print(f'Type {type(e)}')
        print(f'Error: {e}')