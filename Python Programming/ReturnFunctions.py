def get_length(text: str) -> int:
    print(f'Getting length of: {text}')
    return len(text)

text: str = 'Thabang'
length: int = get_length(text)
print(length)

def make_upper(text: str) -> str:
    return text.upper()

print(make_upper('Thabang'))

def connect_to_internet(): -> None:
    print('Connected to Internet')

    var: str = connect_to_internet()
    print(var)