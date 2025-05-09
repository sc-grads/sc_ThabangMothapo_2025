numbers = [10, 20, 30, 40, 50, 60]
s = slice(1, 4)  # from index 1 to 3
print(numbers[s])

text: str = 'Hello World'

first_three: slice = slice(1, 3)
print(text[first_three])

reverse_slice: slice = slice(None, None, -1)
print(text[reverse_slice])

step_two: slice = slice(None, None, 2)
print(text[step_two])