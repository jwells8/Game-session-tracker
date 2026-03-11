--retrieve all sessions with the game title
SELECT games.game_title, sessions.session_timestamp, sessions.session_duration
FROM games
JOIN sessions ON games.game_id = sessions.game_id

--total time played per game (in minutes)
SELECT game_title, SUM(session_duration) AS total_minutes
FROM games
JOIN sessions ON games.game_id = sessions.game_id
GROUP BY game_title
ORDER BY total_minutes DESC
  
--total sessions per game
SELECT game_title, COUNT(session_id) AS total_sessions
FROM games
JOIN sessions ON games.game_id = sessions.game_id
GROUP BY game_title
ORDER BY total_sessions DESC
