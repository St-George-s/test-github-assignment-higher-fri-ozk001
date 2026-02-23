-- -- 2b
-- SELECT P.forename, P.surname, P.plannerNO, COUNT (W.walkID)
-- FROM Planner P
-- JOIN Route R ON R.plannerNO = P.plannerNO
-- JOIN Walk W ON W.routeID = R.routeID
-- GROUP BY P.plannerNO
-- ORDER BY COUNT (W.walkID) DESC;

-- 2c
-- SELECT * FROM Walker;
-- SELECT * FROM Walk;
-- SELECT * FROM Route;
-- SELECT * FROM Planner;

SELECT walkerNO, W.forename, W.surname, W.telNO
FROM Walker W
JOIN Walk Wa ON W.walkerNO = Wa.walkerNO
JOIN Route R ON Wa.routeID = R.routeID
SELECT MAX(distance)
FROM Route R
GROUP BY distance
