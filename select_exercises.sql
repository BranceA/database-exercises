USE codeup_test_db;

SELECT name AS 'Albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'The year that Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'The genre of Nevermind' FROM albums WHERE name = 'Nevermind';

SELECT Name, Artist, release_date AS 'Release Year' FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with less than 20 million certified sales' FROM albums WHERE sales <= 20;

SELECT name AS 'Rock Albums' FROM albums WHERE genre = 'Rock';