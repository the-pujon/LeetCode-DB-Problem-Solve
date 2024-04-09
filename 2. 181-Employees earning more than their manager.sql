USE db_coding_practice;

create table employee (
id int primary key,
name varchar(50),
salary float,
managerId int
);

INSERT INTO employee VALUES
(1, 'Joe', 70000, 3),
(2, 'Henry', 80000, 4),
(3, 'Sam', 60000, null),
(4, 'Max', 90000, null);

SELECT
    a.name AS 'Employee'
FROM
    Employee AS a
        JOIN
    Employee AS b ON a.managerId = b.id
WHERE
    a.salary > b.salary;


--another approach
SELECT
    a.name AS 'Employee'
FROM
    Employee a,
    Employee b
WHERE
    a.managerId = b.id
        AND a.salary > b.salary;