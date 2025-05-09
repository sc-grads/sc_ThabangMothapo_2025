class Fruit:
    category = "Food"  # Class field (shared by all fruits)

    def __init__(self, name, color, sweetness_level):
        self.name = name                  # Instance field
        self.color = color                # Instance field
        self.sweetness_level = sweetness_level  # Instance field

# Create fruit objects
apple = Fruit("Apple", "Red", 7)
banana = Fruit("Banana", "Yellow", 9)

# Access instance fields
print(f"{apple.name} is {apple.color} and sweetness level is {apple.sweetness_level}")
print(f"{banana.name} is {banana.color} and sweetness level is {banana.sweetness_level}")

# Access class field
print(f"Apple belongs to category: {apple.category}")
print(f"Banana belongs to category: {banana.category}")
