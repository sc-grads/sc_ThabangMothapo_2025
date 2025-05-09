people: list[str] = ['Tha', 'Ba', 'ng']
new_people: list[str] = []

for person in people:
    print(f' - {person}, {people.index(person)}')

    if person == 'Tha':
        print(f'removing {person}')
        people.remove('Tha')
        continue

        new_people.append(person)

print(new_people)