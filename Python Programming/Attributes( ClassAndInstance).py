class Student:
    # Class attribute
    school = "Greenwood High"

    def __init__(self, name, grade):
        # Instance attributes
        self.name = name
        self.grade = grade

# Create instances
student1 = Student("Alice", "A")
student2 = Student("Bob", "B")

# Access instance attributes
print(student1.name)   # Alice
print(student2.grade)  # B

# Access class attribute
print(student1.school)  # Greenwood High
print(student2.school)  # Greenwood High

# Changing class attribute
Student.school = "Maple Leaf School"

# All instances reflect the change
print(student1.school)  # Maple Leaf School
print(student2.school)  # Maple Leaf School

