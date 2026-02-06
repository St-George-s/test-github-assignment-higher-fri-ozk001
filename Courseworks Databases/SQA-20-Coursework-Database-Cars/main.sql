-- DESCRIBE ALL TABLES;

-- SELECT * FROM Car;
-- SELECT * FROM Garage;
-- SELECT * FROM Customer;
-- SELECT * FROM Job;



-- SELECT G.garageName, SUM(J.cost) AS 'Total Sales'
-- FROM Garage G
-- JOIN Job J ON J.garageID = G.garageID
-- WHERE dateOut LIKE '19-Jan-20'
-- GROUP BY G.garageName
-- ORDER BY J.cost ASC;

-- SELECT dateOut
-- FROM Job
-- WHERE dateOut LIKE '19-Jan-20';

SELECT , C.regNo, G.garageName
FROM Garage G
JOIN Job J ON J.garageID = G.garageID
JOIN Car C ON C.regNo = J.regNo;