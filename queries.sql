--01 Query all of the entries in the Genre table
SELECT * FROM genre

--02 Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO artist VALUES(29, 'Cancer Bats', 2004)

--03 Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO album VALUES(24, 'Hail Destroyer', 2008, 2270, 'Distort Entertainment', 29, 9)

--04 Using the INSERT statement, add some songs that are on that album to the Song table.
INSERT INTO song VALUES(24, 'Hail Destroyer', 197, 2008, 9, 29, 24),
(25, 'Harem of Scorpions', 167, 2008, 9, 29, 24),
(26, 'Deathsmarch', 216, 2008, 9, 29, 24),
(27, 'Regret', 164, 2008, 9, 29, 24)

--05 Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.
-- Reminder: Direction of join matters. Try the following statements and see the difference in results.
-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;
SELECT s.Title AS "Song",
a.Title AS "Album",
art.ArtistName AS "Artist"
FROM Song s
LEFT JOIN Album a ON s.AlbumId = a.AlbumId
LEFT JOIN Artist art ON s.ArtistId = art.ArtistId
WHERE art.ArtistName = "Cancer Bats"

--06 Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT a.Title AS "Album", COUNT(s.Title) AS "Song Count"
FROM Song s
JOIN Album a ON s.AlbumId = a.AlbumId
GROUP BY a.Title

--07 Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT a.ArtistName AS "Artist Name", COUNT(s.Title) AS "Song Count"
FROM Song s
JOIN Artist a ON s.ArtistId = a.ArtistId
GROUP BY a.ArtistName

--08 Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT g.Label AS "Genre", COUNT(s.Title) AS "Song Count"
FROM Song s
JOIN Genre g ON s.GenreId = g.GenreId
GROUP BY g.Label

--09 Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
SELECT a.Title AS "Album", MAX(a.AlbumLength) AS "Album Length"
FROM Album a

--10 Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
SELECT s.Title AS "Album", MAX(s.SongLength) AS "Song Length"
FROM Song s

--11 Modify the previous query to also display the title of the album.
SELECT s.Title AS "Album", MAX(s.SongLength) AS "Song Length", a.Title AS "Album"
FROM Song s
JOIN Album a ON s.AlbumId = a.AlbumId
