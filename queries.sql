--Useful pre-written queries

--Retrieve all sessions with the game title
SELECT games.game_title, sessions.session_timestamp, sessions.session_duration
FROM games
JOIN sessions ON games.game_id = sessions.game_id

--Total time played per game (in minutes)
SELECT game_title, SUM(session_duration) AS total_minutes
FROM games
JOIN sessions ON games.game_id = sessions.game_id
GROUP BY game_title
ORDER BY total_minutes DESC
  
--Total sessions per game
SELECT game_title, COUNT(session_id) AS total_sessions
FROM games
JOIN sessions ON games.game_id = sessions.game_id
GROUP BY game_title
ORDER BY total_sessions DESC
  
--Your most played game by total duration
  
--Your longest single session ever
  
--All sessions from the last 30 days
  
--Average session length per game
  
--Total hours played per platform
  
--Which month had the most play time

