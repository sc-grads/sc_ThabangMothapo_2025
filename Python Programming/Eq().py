class Car:
    def __init__(self, brand, car_id, colour):
        self.brand = brand
        self.car_id = car_id
        self.colour = colour

    def __str__(self):
        return f'{self.brand}: {self.colour} car with ID {self.car_id}'

    def __repr__(self):
        return f'Car(brand="{self.brand}", car_id={self.car_id}, colour="{self.colour}")'

    def __eq__(self, other):
        # Compare two Car objects for equality based on brand, car_id, and colour
        if isinstance(other, Car):
            return self.brand == other.brand and self.car_id == other.car_id and self.colour == other.colour
        return False

def main():
    car1: Car = Car("BMW", 101, 'red')
    car2: Car = Car("BMW", 101, 'red')
    car3: Car = Car("Audi", 102, 'blue')

    print(car1 == car2)  # True, because both have the same brand, car_id, and colour
    print(car1 == car3)  # False, because they have different attributes

    print(car1)  # Calls __str__: "BMW: red car with ID 101"
    print(repr(car2))  # Calls __repr__: 'Car(brand="BMW", car_id=101, colour="red")'

if __name__ == '__main__':
    main()
