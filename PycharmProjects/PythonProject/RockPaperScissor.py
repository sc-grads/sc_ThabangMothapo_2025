import random
import sys

#Step 1: Starting info
print('Welcome to RPS!')
moves: dict = {'rock': 'R', 'paper': 'P', 'scissor': 'S'}
valid_moves: list[str] = list(moves.keys())

print(valid_moves)

#Step 2: Infinite Loop
while True:
    user_move: str = input('rock, paper, or scissor? >> ').lower()
    if user_move == 'exit':
        print('Thank you for playing!')
        sys.exit()

    if user_move not in valid_moves:
        print('Invalid move!')
        continue

#Ai decides
        ai_move: str = random.choice(valid_moves)
        print('------')
        print(f'You: {moves[user_move]}')
        print(f'AI: {moves[ai_move]}')
        print('------')

    #check moves
    if user_move == ai_move:
        print('It is a tie!')
    elif user_move == 'rock' and ai_move == 'scissor':
        print('you win')
    elif user_move == 'paper' and ai_move == 'rock':
        print('you win')
    elif user_move == 'scissor' and ai_move == 'paper':
        print('you win')
    else:
        print('AI wins...')