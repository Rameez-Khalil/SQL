/*
    In this case the second FROM clause will determine the data which can be SELECT by
    the parent query and it is returing a singluar value also a rowset.
*/

SELECT 
    title, price, (
    SELECT (avg(price)) FROM products
    ) AS "AVG price"
    FROM (
    SELECT * FROM products WHERE price <10
    ) AS "prod sub"; 