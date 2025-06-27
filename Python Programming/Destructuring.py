people = [("Bob", 42, "Mechanic"), ("Jame", 24, "Artist")]

#for name, age, profession in people:
    #print(f"name: {name}, Age: {age}, profession: {profession}")

for person in people:
    print(f"name: {person[0]}, Age: {person[1]}, profession: {person[2]}")

person = ("Bob", 42, "Mechanic")
name, _, profession = person

print(name, profession)

head, *tail = [1, 2, 3, 4, 5]
print(head)
print(tail)