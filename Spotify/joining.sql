-- SELECT * 
-- FROM Tracks 
-- WHERE album_id IN (
--   SELECT album_id 
--   FROM Albums 
--   WHERE release_year > 2018);

--    SELECT T.track_name, A.album_name 
--  FROM Tracks T, Albums A
--  WHERE T.album_id = A.album_id
--    AND A.release_year > 2020;

-- SELECT T.track_name, A.album_name 
-- FROM Tracks T 
-- JOIN Albums A ON T.album_id = A.album_id 
-- WHERE A.release_year > 2020;

-- SELECT A.artist_name, COUNT(T.track_id) 
-- FROM Artists A 
-- JOIN Tracks T ON A.artist_id = T.artist_id 
-- GROUP BY A.artist_name;

-- SELECT * 
-- FROM Tracks 
-- WHERE album_id IN (
--   SELECT album_id 
--   FROM Albums 
--   WHERE album_name LIKE 'L%');

-- SELECT * FROM Tracks
-- WHERE artist_id IN (
--   SELECT artist_id FROM Artists
--   WHERE artist_name LIKE 'Lizzo'
-- -- );

-- SELECT A.artist_id, A.artist_name
-- FROM Tracks T
-- JOIN Artists A ON A.artist_id = T.artist_id
-- WHERE A.artist_id = 5;

-- SELECT T.genre_id
-- FROM Tracks T
-- JOIN Genres G ON T.genre_id = G.genre_id
-- WHERE T.genre_id = 3;

-- SELECT * FROM Albums
-- WHERE release_year IN (
--   SELECT release_year
--   FROM Albums
--   WHERE release_year = 2017
-- );