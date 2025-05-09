class Car:
    # Class variable
    total_cars = 0

    def __init__(self, brand: str, model: str, year: int):
        self.brand = brand
        self.model = model
        self.year = year
        # Incrementing the total number of cars
        Car.total_cars += 1

    def __str__(self):
        return f'{self.year} {self.brand} {self.model}'

    @classmethod
    def car_count(cls):
        # This method returns the total number of Car instances created
        return cls.total_cars

    @classmethod
    def from_string(cls, car_str: str):
        # A class method used as a factory method to create a Car object from a string
        brand, model, year = car_str.split('-')
        return cls(brand, model, int(year))

# Creating cars using the class methods
car1 = Car('Toyota', 'Camry', 2020)
car2 = Car('Honda', 'Civic', 2019)

# Calling the class method car_count
print(f'Total cars created: {Car.car_count()}')  # Outputs: Total cars created: 2

# Using the from_string class method to create a Car object
car3 = Car.from_string('Ford-Mustang-2021')
print(car3)  # Outputs: 2021 Ford Mustang
