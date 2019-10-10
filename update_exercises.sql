SELECT 'Here is a list of all albums' AS 'Brance Facts';
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

SELECT 'And these are the ones released before 1980' AS 'Brance Facts';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'And here''s everything by Michael Jackson' AS 'Brance Facts';
SELECT * FROM albums WHERE artist = "Michael Jackson";
UPDATE albums
SET artist = "Peter Jackson"
WHERE artist = "Michael Jackson";
SELECT * FROM albums WHERE artist = "Peter Jackson";