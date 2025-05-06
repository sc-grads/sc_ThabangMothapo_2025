import time

i: int = 5
while i > 0:
    print(f'Hello {i}')
    i -= 1

import time
connected: bool= True

while connected:
    print('Using internet...')
    time.sleep(10)
    connected = False
print('Connecting...')

#Chatbot
while True:
    user_input: str = input('You:')

    if user_input =='hello':
        print('Thabang: Hey there!')
    else:
        print('Thabang: Goodbye!')


