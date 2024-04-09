use db_coding_practice;

CREATE TABLE Customers (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(50)
);

drop table Customers;

CREATE TABLE Orders (
    id INT PRIMARY KEY auto_increment,
    customerId INT,
    FOREIGN KEY (customerId)
        REFERENCES Customers (id)
);

drop table Orders;

INSERT INTO Customers(name) VALUES
('joe'),
('henry'),
('sam'),
('max');

INSERT INTO Orders(customerId) values
(3),
(1);

SELECT
    *
FROM
    Orders;

SELECT
    name AS Customers
FROM
    Customers
        LEFT JOIN
    Orders ON Customers.id = Orders.customerId
WHERE
    Orders.customerId IS NULL;
    
SELECT 
    name AS Customers
FROM
    Customers
WHERE
    id NOT IN (SELECT 
            customerId
        FROM
            Orders);
