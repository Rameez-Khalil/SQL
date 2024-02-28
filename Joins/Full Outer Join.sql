-- Full outer JOIN: 
--     Return results from both , whether they match or not

SELECT * FROM "cartesianA" AS a
FULL OUTER JOIN "cartesianb" AS b ON a.id = b.id; 