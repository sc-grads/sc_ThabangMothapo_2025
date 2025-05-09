count = 0  # Global variable

def increment():
    global count  # Declare that we're using the global 'count'
    count += 1

increment()
print(count)  # Output: 1
