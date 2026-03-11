#Script to view my stats

import sqlite3

#Conncect to database
connection = sqlite3.connect('game_tracker.db')
cursor = connection.cursor()




#Commit and Close
connection.commit()
connection.close()
