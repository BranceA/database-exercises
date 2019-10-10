USE codeup_test_db;

SELECT 'These are all albums by Pink Floyd' AS 'Brance Facts';
SELECT name FROM albums WHERE artist = "Pink Floyd";

SELECT 'Here is the year that Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Brance Facts';
SELECT release_date FROM albums WHERE name = "Sgt. Pepper''s Lonely Hearts Club Band";

SELECT 'Here''s the genre for Nevermind' AS 'Brance Facts';
SELECT genre FROM albums WHERE name = "Nevermind";

SELECT 'This is a list of all albums released in the 1990s' AS 'Brance Facts';
SELECT name FROM albums WHERE release_date >= 1990;

SELECT 'These albums had less than 20 million certified sales' AS 'Brance Facts';
SELECT name FROM albums WHERE sales <= 20;

SELECT 'Have yourself a list of Rock albums. Specifically Rock. No special kinds of Rock here.' AS 'Brance Facts';
SELECT name FROM albums WHERE genre = "Rock";

