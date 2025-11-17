SELECT P.forename, P.surname, plannerNO, COUNT W.walkID
FROM Planner, Walk
WHERE
GROUP BY plannerNO
ORDER BY DESC COUNT W.walkID;