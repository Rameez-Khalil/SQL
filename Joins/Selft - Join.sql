/*

    SELF JOIN.
    Joining a table to itself.
    This can be done when a table has a foreign key referencing to its primary key.
    In the same table we have a primary key and a foreign key referencing it.
    
*/


-- show me the supervisor
SELECT 
    a.id, a.name, b.name
    FROM employee AS a, FROM emplyee AS b
    WHERE a.id = b.id