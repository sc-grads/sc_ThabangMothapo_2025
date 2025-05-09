class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        # User-friendly string representation
        return f'{self.name}: {self.age} years old'

    def __repr__(self):
        # Developer-friendly representation
        return f'Person(name="{self.name}", age={self.age})'

# Create a person instance
def main():
    mario = Person('Mario', 27)
    print(str(mario))   # Mario: 27 years old
    print(repr(mario))  # Person(name="Mario", age=27)

if __name__ == '__main__':
    main()

