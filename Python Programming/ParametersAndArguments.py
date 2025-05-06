def greet(name: str):
    print(f"Hello, {name}")

greet("John")

def greet(name: str, language: str, default:str):
    if language == "python":
        print(f"Hello, {name}")
    else:
        print(f'{default}, {name}')

greet("Thabang", language="python", default="python")