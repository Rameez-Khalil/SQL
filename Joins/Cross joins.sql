-- CROSS JOIN: Cartesian product, every possible variation.

-- CREATE TABLE "cartesianA" (id INT); 
-- CREATE TABLE "cartesianb" (id INT); 
-- 
-- INSERT into "cartesianA" VALUES (1); 
-- INSERT into "cartesianA" VALUES (2); 
-- INSERT into "cartesianA" VALUES (3); 
-- 
-- 
-- INSERT into "cartesianb" VALUES (1); 
-- INSERT into "cartesianb" VALUES (2); 
-- 
-- 
-- 
-- 
-- 

SELECT * FROM "cartesianA"
CROSS JOIN "cartesianb"; 