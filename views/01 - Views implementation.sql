/*
    We can use the stored results in another query.
    
*/


SELECT 
    a.hire_date AS "Hire Date"
    FROM employees AS a 
    JOIN last_salary_change AS b USING(emp_no)
    WHERE a.hire_date = b.max_date





-- -       - Creating views.
-- create or replace view last_salary_change AS
-- 
--     select 
--         emp_no as "Employee ID",
--         max(from_date) as "Max Date"
--         from salaries
--         group by emp_no; 