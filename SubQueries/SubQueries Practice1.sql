-- SHow me all employees greater than the average age. 

SELECT 
    emp_no AS "Employee ID", 
    concat(first_name, '-', last_name) AS "Full Name"
    FROM employees
    WHERE age(birth_date) >
    (
        SELECT avg(age( birth_date)) FROM employees
    ); 
    