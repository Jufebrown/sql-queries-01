-- Query all of the entries in the Genre table
SELECT * FROM genre

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
INSERT INTO artist VALUES(29, 'Cancer Bats', 2004)

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.
INSERT INTO album VALUES(24, 'Hail Destroyer', 2008, 2270, 'Distort Entertainment', 29, 9)

-- Using the INSERT statement, add some songs that are on that album to the Song table.


-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added. Here is some more info on joins that might help.

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.
-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;
-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
-- Modify the previous query to also display the title of the album.
