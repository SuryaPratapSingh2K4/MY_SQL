USE college;
CREATE TABLE student(
	student_id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO student(student_id,name) VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");
CREATE TABLE course(
	student_id INT PRIMARY KEY,
    course VARCHAR(50)
);
INSERT INTO course(student_id,course) VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");
SELECT *
FROM student as s
INNER JOIN course as c
ON s.student_id = c.student_id;

SELECT *
FROM student
LEFT JOIN course
ON student.student_id = course.student_id;

SELECT *
FROM student
RIGHT JOIN course
ON student.student_id = course.student_id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;