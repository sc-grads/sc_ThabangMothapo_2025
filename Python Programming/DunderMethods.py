class Book:
    def __init__(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages

    def __str__(self):
        return f'"{self.title}" by {self.author}'

    def __len__(self):
        return self.pages

    def __eq__(self, other):
        return self.pages == other.pages

# Creating two book instances
book1 = Book("Python Basics", "John Doe", 300)
book2 = Book("Learn Python", "Jane Smith", 300)

# Using dunder methods
print(book1)              # Uses __str__: "Python Basics" by John Doe
print(len(book1))         # Uses __len__: 300
print(book1 == book2)     # Uses __eq__: True
