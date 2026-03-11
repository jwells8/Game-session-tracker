--Sample data to test with

INSERT INTO games (game_title, game_genre, game_platform)
VALUES('Doom: The Dark Ages', 'FPS', 'Playstation 5'),
('Super Mario Galaxy 2', '3D Platformer', 'Nintendo Switch 2'),
('It Takes 2', 'Co-op', 'Playstation 5'),
('MarioKart Double Dash', 'Racing', 'GameCube'),
('The Legend of Zelda: Breath of the Wild', 'Action-Adventure', 'Nintendo Switch 2');

INSERT INTO sessions (game_id, session_timestamp, session_duration)
VALUES (1, '2026-03-11 09:30:00', 60),
(2, '2026-03-08 19:00:00', 240),
(4, '2026-03-05 20:15:00', 30),
(3, '2026-02-28 20:00:00', 60),
(5, '2026-02-16 10:00:00', 300),
(5, '2026-02-17 10:00:00', 270),
(1, '2026-03-11 12:00:00', 90);
