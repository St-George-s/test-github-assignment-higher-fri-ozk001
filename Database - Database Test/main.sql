-- DESCRIBE ALL TABLES;
-- 3.1
-- SELECT episodeTitle, ShowName, maxViewers, episodeDate FROM Episode
-- JOIN Show On Episode.showID = Show.showID;

-- 3.2
-- SELECT ShowName AS 'Show', episodeTitle AS 'Episode' FROM Episode
-- JOIN Show On Episode.showID = Show.showID;

-- 3.3
-- SELECT ShowName AS 'Show', episodeTitle AS 'Episode' FROM Episode
-- JOIN Show On Episode.showID = Show.showID;
-- UPDATE Episode
-- SET episodeDate = '2024-12-24'
-- WHERE episodeTitle = 'Festive Baking Finale';

-- 5
SELECT ShowName AS 'showName' FROM Show
JOIN Episode ON Show.showID = Episode.showID;
SELECT ratingValue AS 'TotalRatings', Count(*)
FROM ViewerRating
JOIN ViewerRating ON Episode.episodeID = ViewerRating.episodeID
JOIN Episode ON Show.showID = Episode.showID
GROUP BY genre;
