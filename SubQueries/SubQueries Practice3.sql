SELECT 
    emp_no, 
    salary, 
    from_date
    FROM salaries AS s
    WHERE from_date = (
        SELECT max(from_date) FROM salaries AS s1
        WHERE s1.emp_no = s.emp_no 
    )
    ORDER BY emp_no ASC; 