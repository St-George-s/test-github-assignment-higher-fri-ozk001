-- SELECT COUNT(*)
-- FROM Tracks;

-- SELECT genre_id, COUNT(*)
-- FROM Tracks 
-- GROUP BY genre_id;

-- SELECT artist_id, AVG(duration_ms)
-- FROM Tracks
-- GROUP BY artist_id;

-- SELECT * FROM Tracks
-- Where duration_ms;

-- SELECT COUNT(track_id)
-- FROM Tracks;

-- SELECT album_id, COUNT(*)
-- FROM Tracks
-- GROUP BY album_id;

-- SELECT genre_id, MAX(duration_ms)
-- FROM Tracks
-- GROUP BY genre_id;

-- SELECT genre_id, MIN(duration_ms)
-- FROM Tracks
-- GROUP BY genre_id;

-- SELECT genre_id, COUNT(duration_ms)
-- FROM Tracks
-- GROUP BY genre_id;

-- SELECT genre_id, SUM(duration_ms)
-- FROM Tracks
-- GROUP BY genre_id;

-- SELECT genre_id, AVG(duration_ms)
-- FROM Tracks
-- GROUP BY genre_id;

SELECT track_name, SUM(duration_ms)
From Tracks
GROUP BY track_name;