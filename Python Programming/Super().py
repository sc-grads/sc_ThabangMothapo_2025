import math

# Parent class (Base class)
class Shape:
    def __init__(self, name):
        self.name = name

    def area(self):
        raise NotImplementedError("Subclass must implement abstract method")

    def perimeter(self):
        raise NotImplementedError("Subclass must implement abstract method")

    def describe(self):
        return f"{self.name}: Area = {self.area()} | Perimeter = {self.perimeter()}"

# Child class 1 (Subclass - Circle)
class Circle(Shape):
    def __init__(self, radius):
        super().__init__("Circle")  # Call the parent class constructor to set the name
        self.radius = radius

    def area(self):
        return math.pi * (self.radius ** 2)  # Area = πr²

    def perimeter(self):
        return 2 * math.pi * self.radius  # Perimeter = 2πr

# Child class 2 (Subclass - Rectangle)
class Rectangle(Shape):
    def __init__(self, width, height):
        super().__init__("Rectangle")  # Call the parent class constructor to set the name
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height  # Area = width * height

    def perimeter(self):
        return 2 * (self.width + self.height)  # Perimeter = 2(w + h)

# Create instances of Circle and Rectangle
circle = Circle(5)
rectangle = Rectangle(4, 6)

# Calling methods from the parent and child classes
print(circle.describe())  # Circle specific description
print(rectangle.describe())  # Rectangle specific description
