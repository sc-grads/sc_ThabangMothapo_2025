def check_age(age: int) -> bool:
    if age < 0:
        raise ValueError('age cannot be negative')
    elif age >= 21:
        print('You are old enough')
        return True
    else:
        print('You are too young')
        return False

check_age(90)


#raise Exception('this is general exeption')