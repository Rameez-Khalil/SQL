/*
    Views can be queried like tables.
    select * from last_salary_change <viewName>
    
    This table can be joined with the salaries table to get the max salary.
    
    select * from salaries 
    join last_salary_change using (emp_no)
*/


-- Creating a view.

CREATE OR REPLACE VIEW last_salary_change AS 
SELECT 
    e.emp_no AS "Employee ID", 
    max(s.from_date)
    FROM salaries AS s
    JOIN employees AS e USING(emp_no)
    JOIN dept_emp AS de USING (emp_no)
    JOIN departments AS d USING (dept_no)
    GROUP BY e.emp_no;