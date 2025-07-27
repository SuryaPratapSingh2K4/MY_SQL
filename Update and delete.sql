USE college;
SELECT * FROM student;
TABLE student;
SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET marks = 12
WHERE rollno = 105;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 90 AND 95;

UPDATE student
SET grade = "C"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET grade = "D"
WHERE marks <= 80;

DELETE FROM student
WHERE marks <= 33;
