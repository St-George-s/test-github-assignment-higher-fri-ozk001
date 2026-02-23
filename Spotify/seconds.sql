-- SELECT track_id FROM Tracks;
-- DELETE FROM Tracks
-- WHERE track_id = 5;

-- SELECT artist_id FROM Artists;
-- DELETE FROM Artists
-- WHERE artist_id
-- BETWEEN 20 AND 25;

-- SELECT * FROM Genres;
-- INSERT INTO Genres (genre_id, genre_name) VALUES (21, 'Jazz');

-- SELECT * FROM Tracks;
-- INSERT INTO Tracks (track_id, track_name, artist_id, album_id, genre_id, duration_ms)
-- VALUES (54, 'New Track', 4, 4, 1, 180000),
-- (55, 'Another Track', 5, 5, 2, 200000);

-- INSERT INTO Tracks (track_id, track_name, artist_id, album_id, genre_id, duration_ms) 
-- VALUES (54, 'New Track', 4, 4, 1, 180000), 
--         (55, 'Another Track', 5, 5, 2, 200000);

-- SELECT * FROM Tracks;

-- UPDATE Albums
-- SET release_year = 2021
-- WHERE album_id = 3;
-- SELECT * FROM Albums;

-- UPDATE Artists
-- SET artist_name = 'New Artist Name'
-- WHERE artist_id IN (1, 2, 3);
-- SELECT * FROM Artists;

-- SELECT * FROM Tracks;
-- DELETE FROM Tracks
-- WHERE track_id = 4;

-- DELETE FROM Tracks
-- WHERE duration_ms < 60000;
-- SELECT * FROM Tracks;

-- INSERT INTO Tracks (track_id, track_name, artist_id, album_id, genre_id, duration_ms)
-- VALUES (4, 'New Song', 6, 6, 3, 59000);

-- INSERT INTO Artists (artist_id, artist_name)
-- VALUES (333, ohusdouhsfohu);
