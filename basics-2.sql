CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student(rollno,name)
VALUES
(644,"surya"),
(638,"messtani"),
(627,"vaishnav");

INSERT INTO student VALUES(639,"priya");