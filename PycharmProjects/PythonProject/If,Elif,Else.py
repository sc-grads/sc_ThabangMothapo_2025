age: int = 30

if age >=78:
    print('you may enter the club')
else:
    print('You are not allowed in')

    Weather: str ="cloudy"

if Weather == "cloudy":
    print('it is a nice day')
elif Weather == "sunny":
    print('the weather is better')
elif Weather == "rainy":
     print("what an awful day")
else:
    print('Unknown weather')

number: int = 10

if number > 0:
    result: str = 'Above 0'
else:
    result: str = '0 and below'

#shorthand if,else
result: str = 'Above 0' if number > 0 else '0 and below'

print (result)