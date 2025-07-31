USE college;

SELECT * FROM student1;

ALTER TABLE student1
DROP COLUMN stud_age;

INSERT INTO student1 (regno,full_name,marks,city) VALUES
(107,"ram",98,"lucknow"),
(109,"sita",99,"lucknow");

SELECT AVG(marks) FROM student1;
-- 89,92.1667

SELECT full_name,marks FROM student1
WHERE marks > 92.1667;

SELECT full_name,marks FROM student1
WHERE marks > 
(SELECT AVG(marks) FROM student1);

SELECT full_name, regno FROM student1
WHERE regno IN
(SELECT regno FROM student1 WHERE regno % 2 = 0);

SELECT full_name, marks FROM student1
WHERE marks IN
(SELECT max(marks) FROM student1
WHERE city = "delhi");


SELECT full_name, marks FROM student1
WHERE marks IN
(SELECT marks FROM student1
WHERE city = "delhi" ORDER BY regno desc);

SELECT * FROM student1;