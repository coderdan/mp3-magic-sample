DROP TABLE IF EXISTS songs;
CREATE TABLE songs (
  id serial PRIMARY KEY,
  title text,
  artist text,
  filename text
);

INSERT INTO songs (title, artist, filename) VALUES ('Where''s Your Head At', 'Basement Jaxx', '09 Where''s Your Head At.mp3');
INSERT INTO songs (title, artist, filename) VALUES ('Lost in Space', 'Apollo 440', 'Lost in Space.mp3');
INSERT INTO songs (title, artist, filename) VALUES ('8 Bit Adventure', 'Adhesive Wombat', 'Adhesive Wombat - Marsupial Madness - 01 8 Bit Adventure.mp3');

