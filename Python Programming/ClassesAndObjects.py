class GroceryItem:
    def __init__(self, name: str, quantity: int) -> None:
        self.name = name
        self.quantity = quantity

    def __str__(self) -> str:
        return f"{self.quantity} x {self.name}"
