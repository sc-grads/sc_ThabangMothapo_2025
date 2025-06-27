number = 7
user_input = input("would you like to play? (Y/n)")
while user_input != "n":
    user_number = int(input("Gues our number:"))
    if user_number == number:
        print("You guessed right!")
    elif abs(number - user_number) == 1:
        print("You were off by one")
    else:
        print("You guessed wrong!")

    while True:
        user_input = input("Would you like to play again? (Y/n)")

        if user_input == "n":
            break

grades = [35, 67, 98, 100, 100]
total = sum(grades)
amount = len(grades)

print(total/amount)