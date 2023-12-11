SELECT 
    o.orderid, 
    o.customerid, 
    o.netamount
    FROM orders AS o
    WHERE CASE WHEN o.customerid > 10 THEN o.netamount <100
    ELSE o.netamount > 100
    END
    ORDER BY o.customerid; 