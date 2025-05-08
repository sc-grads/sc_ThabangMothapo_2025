import time

def connect() -> None:
    print('Connecting...')
    time.sleep(1)
    print('Connected!')

connect()
# in main
#import connections
#connections.connect()

# if__name__ == '__main__': is used to check if the connection was run directly in main
# connect()
#is used in Python to ensure that certain code only runs when the script is executed directly, not when it is imported as a module in another script.