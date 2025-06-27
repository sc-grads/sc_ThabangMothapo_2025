def hello():
    print("Hello")
hello()

print("Welcome to the age in seconds program!")
def user_age_in_seconds():
    user_age = int(input("Enter your age: "))
    age_seconds = user_age * 24 * 60 * 60
    print(f"Your age is {age_seconds} seconds.")


user_age_in_seconds()

print("goodbye")

friends = []

def add_friend():
    friends.append("Rolf")

add_friend()
print(friends)