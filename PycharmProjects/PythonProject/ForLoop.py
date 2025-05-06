text: str = 'Hello, world'

for i in range(9):
    print(text)

for i in range(3):
  print(f'{i}: {text}')

people: list[str] = ['thabang', 'Lebogang', 'Fort']
for person in people:
    if len(person) ==4:
        print(f'{person} has a long name')
    else:
        print(f'{person} has a short name')