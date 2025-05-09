# Parent class (Base class)
class Animal:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def speak(self):
        raise NotImplementedError("Subclass must implement abstract method")

    def describe(self):
        return f"{self.name} is {self.age} years old."

# Child class 1 (Subclass)
class Dog(Animal):
    def __init__(self, name, age, breed):
        super().__init__(name, age)  # Calling the parent class constructor
        self.breed = breed

    def speak(self):
        return "Woof!"

# Child class 2 (Subclass)
class Cat(Animal):
    def __init__(self, name, age, color):
        super().__init__(name, age)  # Calling the parent class constructor
        self.color = color

    def speak(self):
        return "Meow!"

# Creating instances of Dog and Cat
dog = Dog("Buddy", 5, "Golden Retriever")
cat = Cat("Whiskers", 3, "Tabby")

# Calling methods from the parent and child classes
print(dog.describe())  # From Animal class
print(dog.speak())     # From Dog class
print(cat.describe())  # From Animal class
print(cat.speak())     # From Cat class
