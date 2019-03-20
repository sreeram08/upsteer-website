SELECT 
    salary, dep_id, firstName, B.depName
FROM
    department B
        JOIN
    employees ON B.id = employees.dep_id
WHERE
    employees.salary = (SELECT 
            MAX(employees.salary)
        FROM
            employees)
GROUP BY dep_id;


SELECT 
    salary, dep_id, firstName, B.depName
FROM
    department B
        JOIN
    employees ON B.id = employees.dep_id
ORDER BY employees.salary DESC
LIMIT 2;

SELECT 
    salary, dep_id, firstName, B.depName
FROM
    employees
        JOIN
    department B ON B.id = employees.dep_id
WHERE
    employees.salary = (SELECT 
            AVG(employees.salary)
        FROM
            employees
        WHERE
            employees.salary IS NOT NULL)
