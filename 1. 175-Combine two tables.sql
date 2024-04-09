USE db_coding_practice;

CREATE TABLE person (
    personId INT PRIMARY KEY,
    lastname VARCHAR(100),
    firstname VARCHAR(100)
);

CREATE TABLE address (
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(50),
    state VARCHAR(50)
);

INSERT INTO person VALUES
(1, 'Wang', 'Alen'),
(2, 'Alice','Bob');

INSERT INTO address values
(1, 2, "New York City", "New York"),
(2, 3, "Leetcode", "California");

SELECT
    firstname, lastname, city, state
FROM
    person AS p
        LEFT JOIN
    address AS a USING (personId);
