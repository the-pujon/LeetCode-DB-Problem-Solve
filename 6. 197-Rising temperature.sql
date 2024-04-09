USE db_coding_practice;

CREATE TABLE weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

drop table weather;

INSERT INTO weather VALUES 
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

SELECT 
    w.id
FROM
    weather AS w
        JOIN
    weather AS w1 ON DATEDIFF(w.recordDate, w1.recordDate) = 1
WHERE w.temperature > w1.temperature;
