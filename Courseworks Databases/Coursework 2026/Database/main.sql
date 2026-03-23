-- 2026
DESCRIBE ALL TABLES;

SELECT * FROM Movie;
SELECT * FROM Genre;
SELECT * FROM Customer;
SELECT * FROM Purchase;


--SELECT forename, surname FROM Customer C
--JOIN Purchase P ON P.customerID = C.customerID
--JOIN Movie M ON M.movieCode = P.movieCode
--WHERE duration < 88
--GROUP BY forename
--ORDER BY surname ASC;

--SELECT forename, surname, SUM(M.price) AS 'Total spent(£)'
--FROM Customer C
--JOIN Purchase P ON P.customerID = C.customerID
--JOIN Movie M ON M.movieCode = P.movieCode
--JOIN Genre G ON G.genreID = M.genreID
--WHERE genreName LIKE 'Comedy'
--GROUP BY forename
--ORDER BY SUM(M.price) DESC;

--SELECT forename, surname, email
--FROM Customer C
--JOIN Purchase P ON P.customerID = C.customerID
--JOIN Movie M ON M.movieCode = P.movieCode
--WHERE released LIKE '199%'
--GROUP BY forename
--ORDER BY forename ASC;

