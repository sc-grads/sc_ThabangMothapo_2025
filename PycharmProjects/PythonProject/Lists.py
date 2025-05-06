people: list[str] = ['Bob','Thabang', 'Fortune']
print(people)

print(people[0])
print(people[1])

#Append
people.append('Lebo')
print(people)

#Remove
people.remove('Bob')
print(people)

#Pop
people.pop()
print(people)

#Change
people[0] = 'Dale'
print(people)

#Insert
people.insert(1, 'Jim')
print(people)

#Clear
people.clear()
print(people)

