#import time

#print(time.sleep(1))

#functionalities
#from typing import final

Author: final(str) = 'Tha'
Version: final(int) = 1

def greet(name: str ) -> None:
    print(f'Hello, {name}')

from greetings import greet # greetings is main
greet('Jim')

#from main import * = import everything
