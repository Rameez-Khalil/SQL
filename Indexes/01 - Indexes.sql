/*
    In this case we first ran an index on our city table
*/

EXPLAIN  ANALYZE
SELECT 
    NAME, district , countrycode
    FROM city
    WHERE countrycode IN ('TUN', 'BE', 'NL'); 


-- create index idx_countrycode on city (countrycode);