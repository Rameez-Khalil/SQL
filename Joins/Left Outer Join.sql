/*
    Outer Join - Adds the data when there is no match.
    Left outer join - adds the data from left table (don't have a match)
    Right outer join - adds the data from right table (don't have a match)
*/

/*
    Q - How many employees that aren't managers.
*/


SELECT  
    count(a.emp_no)
    FROM employees AS a 
    LEFT JOIN dept_manager AS b ON a.emp_no = b.emp_no
    WHERE b.emp_no IS NULL; 