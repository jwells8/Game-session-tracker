#Script to view my stats

import sqlite3

#Conncect to database
connection = sqlite3.connect('game_tracker.db')
cursor = connection.cursor()

with open('queries.sql', 'r') as sql_file:
  sql_script = sql_file.read()

queries = sql_script.split('--')

query_list = {}

#Loops through every query and adds it to the dictionary
for chunk in queries:
  lines = chunk.strip().splitlines()
  if lines:
    label = lines[0].strip()
    sql = '\n'.join(lines[1:]).strip()
    if sql:
      query_list[label] = sql

while True:
  #Displays the query options to the user
  for i, label in enumerate(query_list):
      print(f"{i+1}. {label}")
  #Exit option
  print(f"{len(query_list) + 1}. Exit")

  #User selects query
  command = int(input("Select a query to run: "))
  if command == len(query_list) + 1:
    break

  #Executes query
  label = list(query_list.keys())[command - 1]
  cursor.execute(query_list[label])

  #Results displayed
  results = cursor.fetchall()
  for row in results:
      print(row)

#Commit and Close
connection.commit()
connection.close()
