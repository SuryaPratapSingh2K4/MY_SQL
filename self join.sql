USE company;
DROP TABLE employee;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    maanager_id INT
);

ALTER TABLE employee
CHANGE maanager_id manager_id INT;

INSERT INTO employee(id,name,manager_id) VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name as manager_name ,b.name as name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;