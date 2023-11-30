/*

Creating a partial index using a where clause.
If we are to use a different datasets in our where clause inside the query, then the execution time won't get affected as index was assigned to only three countrycodes.
*/


-- create index partial_index on city (countrycode) where countrycode in ('TUN', 'BE','NL');


SELECT 
    NAME, 
    district, 
    countrycode
    FROM city 
   WHERE countrycode IN ('TUN', 'BE','NL'); 
