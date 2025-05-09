from dataclasses import dataclass

@dataclass
class Fruit:
    name: str
    color: str
    sweetness_level: int  # 1 (least sweet) to 10 (very sweet)

    def __post_init__(self):
        # Validation logic
        if not (1 <= self.sweetness_level <= 10):
            raise ValueError("Sweetness level must be between 1 and 10")

        # Normalization (capitalize name and color)
        self.name = self.name.capitalize()
        self.color = self.color.lower()

# Usage
apple = Fruit("apple", "RED", 7)
print(apple)
