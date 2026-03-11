# Script to add a new session

import sqlite3

#Conncect to database
connection = sqlite3.connect('game_tracker.db')
cursor = connection.cursor()

#Get Input from User
game_title = input("What game did you play? ")
session_duration = int(input("How long did you play? "))

#Look Up Game
cursor.execute("SELECT game_id FROM games Where game_title = ?", (game_title,))
first_row = cursor.fetchone()

#If game doesn't already exist, add entry
if first_row is None:
  game_genre = input("What is the game's genre? ")
  game_platform = input("What platform is the game played on? ")
  cursor.execute("INSERT INTO games (game_title, game_genre, game_platform) VALUES (?, ?, ?)", (game_title, game_genre, game_platform))
  game_id = cursor.lastrowid
else:
  game_id = first_row[0]
  
#Insert Session
cursor.execute("INSERT INTO sessions (game_id, session_duration) VALUES (? , ?)", (game_id, session_duration))

#Commit and Close
connection.commit()
connection.close()
