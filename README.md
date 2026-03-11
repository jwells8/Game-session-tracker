# Game-session-tracker

A personal gaming history tracker built with Python and SQLite. Log your play sessions, track time spent per game, and query your gaming stats from the command line.

Features
-----------------------------------------------------------------------------------------------------------------------------
Log a new game session with a single script
Automatically adds new games to the database if they don't exist yet
Query your gaming history with pre-written SQL queries
Interactive stats menu to explore your data


Project Structure
-----------------------------------------------------------------------------------------------------------------------------
game-session-tracker/
├── schema.sql        # Database setup — creates the games and sessions tables
├── seed.sql          # Sample data for testing
├── queries.sql       # Pre-written SQL queries for exploring your data
├── log_session.py    # Script to log a new game session
└── stats.py          # Interactive script to view your gaming stats

Setup
-----------------------------------------------------------------------------------------------------------------------------
Prerequisites

Python 3.8+
No external dependencies — uses Python's built-in sqlite3 library

Setting up the database

Clone the repository:

bash   git clone https://github.com/YOUR_USERNAME/game-session-tracker.git
   cd game-session-tracker

Set up the database tables:

bash   sqlite3 game_tracker.db < schema.sql

(Optional) Load sample data:

bash   sqlite3 game_tracker.db < seed.sql

Usage
-----------------------------------------------------------------------------------------------------------------------------
Log a new session
bashpython3 log_session.py
You'll be prompted to enter:

The game you played
How long you played (in minutes)

If the game doesn't exist in the database yet, you'll also be asked for the genre and platform — it gets added automatically.
Example:
What game did you play? Doom: The Dark Ages
How long did you play? 90
Session logged!
View your stats
bashpython3 stats.py
An interactive menu will display your available queries to choose from:
1. retrieve_all_sessions
2. total_time
3. total_sessions
4. Exit
Select a query to run:
Select a number to run that query and see the results. You'll be returned to the menu after each query until you choose to exit.

Database Schema
Two tables make up the database:
games — a catalogue of every game you've played
ColumnTypeDescriptiongame_idINTEGERPrimary key, auto-incrementedgame_titleVARCHARUnique name of the gamegame_genreVARCHARGenre (e.g. FPS, RPG)game_platformVARCHARPlatform (e.g. PlayStation 5)
sessions — a log of every play session
ColumnTypeDescriptionsession_idINTEGERPrimary key, auto-incrementedgame_idINTEGERForeign key referencing gamessession_timestampDATETIMEDate and time of session (defaults to now)session_durationINTEGERDuration of session in minutes
