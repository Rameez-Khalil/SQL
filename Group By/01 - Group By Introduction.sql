/*
    1. Groupby aggregates the data with respect to the group being provided to the query.
    2. Groupby splits data into logical groups so we can apply functions against each group.
    3. The sole purpose is to run function against some other parts of the data. 
    4. GroupBy gets used along with aggregate functions. 
    
    ****GROUP BY WORKS ON THE BASIS OF SPLIT-APPLY-COMBINE****
    
    ORDER OF OPERATIONS: 
        1. FROM
        2. WHERE.
        3. GROUP BY.
        4. SELECT.
        5. ORDER
*/

-- every department becomes a group in this case
                -- select 
                --     dept_no, count(emp_no)
                --     from dept_emp
                --     group by (dept_no); 
                
               