Users: dict = {1: 'Thabang', 2: 'Fortune'}
empty: dict = {}
print(Users)
print(empty)

#Add Users
Users[3] = 'Lebogang'
print(Users)

#Modify/Replace
Users[1] = ('mothapo')
print(Users)

#Pop Users
Users.pop(1)
print(Users)  #Or Delete keyword
del Users[2]
print(Users)

print(Users[1])

#Dictionary inside another dictionary
weather: dict = {'time': '12:00',
                 'weather': {'Morning': 'rain',
                             'Evening': 'more rain'}}

print(weather)
print(weather['time'])
print(weather['weather'])
print(weather['weather']['Morning'])

Users.clear()
print(Users)