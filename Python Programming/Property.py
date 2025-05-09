class Fruit:
    def __init__(self, name: str, color: str, sugar_grams: float):
        self.name = name
        self.color = color
        self.sugar_grams = sugar_grams

    @property
    def is_very_sweet(self) -> bool:
        # A fruit is considered very sweet if it has more than 15g of sugar
        return self.sugar_grams > 15

    @property
    def description(self) -> str:
        return f"{self.name.capitalize()} is {self.color.lower()} and has {self.sugar_grams}g sugar."

# Usage
banana = Fruit("banana", "Yellow", 17)
print(banana.description)       # Banana is yellow and has 17g sugar.
print(banana.is_very_sweet)     # True
