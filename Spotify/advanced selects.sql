-- SELECT artist_name 
-- FROM Artists 
-- WHERE artist_name LIKE 'M%';

-- SELECT album_name, release_year 
-- FROM Albums 
-- WHERE release_year <= 2015 
-- ORDER BY release_year DESC;

-- SELECT ar.album_name AS Album, ar.release_year Year 
-- FROM Albums ar
-- WHERE ar.release_year > 2019 
-- ORDER BY ar.release_year

-- SELECT artist_name, LENGTH(artist_name) AS Name_Length 
-- FROM Artists 
-- WHERE artist_name LIKE '__a%';

-- SELECT artist_name
-- FROM Artists
-- WHERE artist_name LIKE 'L%';

-- SELECT track_name
-- FROM Tracks
-- WHERE track_name LIKE 'S_e%'; NOT WORKING

-- SELECT album_name
-- FROM Albums
-- WHERE release_year > 2010
-- ORDER BY release_year;

-- SELECT artist_name, LENGTH(artist_name) AS Name_Length 
-- FROM Artists 
-- WHERE Name_Length >5 ;