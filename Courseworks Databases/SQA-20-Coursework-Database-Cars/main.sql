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

-- SELECT MAX(dateOut - dateIn) AS 'Number of days', C.regNo, G.garageName
-- FROM Garage G
-- JOIN Job J ON J.garageID = G.garageID
-- JOIN Car C ON C.regNo = J.regNo
-- GROUP BY C.regNo
-- ORDER BY MAX(dateOut - dateIn) DESC;



-- SELECT forename, surname, AVG(cost) AS 'Average Job Cost'
-- FROM Customer, Car, Job
-- WHERE Customer.customerID = Car.customerID
-- AND Car.regNo = Job.regNo
-- GROUP BY forename, surname
-- ORDER BY AVG(cost) DESC;

-- SELECT forename, surname, AVG(cost) AS 'Average Job Cost'
-- FROM Customer CU
-- JOIN Car C ON C.customerID = CU.customerID
-- JOIN Job J ON J.regNo = C.regNo
-- GROUP BY CU.customerID
-- ORDER BY AVG(cost) DESC;

-- SELECT * FROM Customer
-- WHERE forename LIKE 'C%';

-- -- 2539
-- -- 5441

-- SELECT * FROM Car
-- WHERE customerID = 2539;

-- -- FO66 VMG
-- -- YE12 WUQ

-- SELECT * FROM Job
-- WHERE regNo = 'YE12 WUQ';

-- 294.71
-- 378.13

-- 336.42

--