no_value: None = None
print(no_value)
print(type(no_value))

#Retrieve a Value
Users: dict = {1: 'Thabang', 2: 'Fortune'}
print(Users.get(3))

# | means or
possible_user: str | None = Users.get(2)
print(possible_user)