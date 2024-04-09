use db_coding_practice;


CREATE TABLE person (
    id INT PRIMARY KEY,
    email VARCHAR(200)
);

drop table person;

INSERT INTO person VALUES 
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');

-- delete from person
-- where person.email = persion.email and 

SET SQL_SAFE_UPDATES = 0;

DELETE p1 . * FROM person AS p1
        INNER JOIN
    person AS p2 ON p1.email = p2.email AND p1.id > p2.id;

select * from person;

select email from person group by email;

with t as (
    select min(id) id from person
group by email
)
delete from person
where id not in (select id from t);

