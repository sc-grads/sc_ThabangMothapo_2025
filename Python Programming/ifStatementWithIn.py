movies_watched = {"The Matrix", "Green Book", "Her"}
user_movie = input("Which movie do you want to watch?")

if user_movie in movies_watched:
    print(f"{user_movie} watched")
else:
    print(f"{user_movie} not watched")