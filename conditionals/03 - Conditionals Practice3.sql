/*
    What if the customers would have spent 100 dollars more.
    then how would that impact.
*/

SELECT 
    sum(
        CASE 
            WHEN o.netamount < 100
            THEN -100
            ELSE o.netamount
        END 
    ) AS "returns", 
    sum(o.netamount) AS "Normal total"
    
    FROM orders AS o; 