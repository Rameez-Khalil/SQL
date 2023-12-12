/*
    Sum - Adds the values within the range.
*/

SELECT 
    a.orderid, 
    a.customerid, 
    a.netamount, 
    sum(a.netamount) OVER(
    PARTITION BY a.customerid
    ORDER BY a.orderid
    ) AS "Group Sum"
    FROM orders AS a
    ORDER BY a.orderid; 