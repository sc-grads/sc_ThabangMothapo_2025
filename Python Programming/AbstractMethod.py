from abc import ABC, abstractmethod


class Appliance(ABC):
    def __init__(self, brand: str, model: str):
        self.brand = brand
        self.model = model

    @abstractmethod
    def turn_on(self):
        pass

    @abstractmethod
    def turn_off(self):
        pass

    @abstractmethod
    def get_power_usage(self):
        pass

    def __str__(self):
        return f'{self.brand} {self.model}'


# Concrete class for a Washing Machine
class WashingMachine(Appliance):
    def __init__(self, brand: str, model: str, capacity: float):
        super().__init__(brand, model)
        self.capacity = capacity

    def turn_on(self):
        print(f'{self} is now turned on.')

    def turn_off(self):
        print(f'{self} is now turned off.')

    def get_power_usage(self):
        return 500  # In watts, example value for power usage


# Concrete class for a Refrigerator
class Refrigerator(Appliance):
    def __init__(self, brand: str, model: str, volume: float):
        super().__init__(brand, model)
        self.volume = volume

    def turn_on(self):
        print(f'{self} is now turned on.')

    def turn_off(self):
        print(f'{self} is now turned off.')

    def get_power_usage(self):
        return 150  # In watts, example value for power usage


# Example Usage
def main():
    wm = WashingMachine("LG", "WM1234", 7.5)
    fridge = Refrigerator("Samsung", "RF5678", 350)

    appliances = [wm, fridge]

    for appliance in appliances:
        print(f'{appliance} uses {appliance.get_power_usage()} watts.')
        appliance.turn_on()
        appliance.turn_off()


if __name__ == "__main__":
    main()
