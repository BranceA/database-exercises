SELECT 'These are all released after 1991' AS 'Brance Facts';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'These are all the disco albums' AS 'Brance Facts';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'These are all albums by Whitney Houston' AS 'Brance Facts';
DELETE FROM albums WHERE artist = 'Whitney Houston';