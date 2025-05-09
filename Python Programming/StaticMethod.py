class Calculator:

    @staticmethod
    def add(a, b):
        return a + b

    @staticmethod
    def subtract(a, b):
        return a - b

    @staticmethod
    def multiply(a, b):
        return a * b

    @staticmethod
    def divide(a, b):
        if b == 0:
            return "Error! Division by zero."
        return a / b


# Testing the static methods
print("Addition: 5 + 3 =", Calculator.add(5, 3))  # 8
print("Subtraction: 5 - 3 =", Calculator.subtract(5, 3))  # 2
print("Multiplication: 5 * 3 =", Calculator.multiply(5, 3))  # 15
print("Division: 5 / 3 =", Calculator.divide(5, 3))  # 1.6667
print("Division by zero:", Calculator.divide(5, 0))  # Error! Division by zero.
