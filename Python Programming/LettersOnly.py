import string

alphabet = string.ascii_letters  # A-Z and a-z

def is_letters_only(text: str) -> None:
    for char in text:
        if char not in alphabet:
            raise ValueError('Text can only contain letters')
    print(f'"{text}" is letter-only, good job!')

def main() -> None:
    while True:
        try:
            user_input: str = input('Enter text to check: ')
            is_letters_only(user_input)
        except ValueError:
            print('Please only enter English letters')
        except Exception as e:
            print(f'Encountered an error: {type(e).__name__}: {e}')

main()



