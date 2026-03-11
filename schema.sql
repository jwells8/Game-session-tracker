#Database setup

DROP TABLE IF EXISTS sessions;
DROP TABLE IF EXISTS games;

CREATE TABLE games (
  game_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  game_title VARCHAR(50) NOT NULL UNIQUE,
  game_genre VARCHAR(20),
  game_platform VARCHAR(20) NOT NULL
);

CREATE TABLE sessions (
  session_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  game_id INTEGER NOT NULL,
  FOREIGN KEY (game_id) REFERENCES games(game_id),
  session_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
  session_duration INTEGER
);
