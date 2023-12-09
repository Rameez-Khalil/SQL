SELECT 
     emp_no, 
    last_value( salary ) OVER(
        PARTITION BY emp_no 
        ORDER BY from_date
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    )
    FROM salaries; 