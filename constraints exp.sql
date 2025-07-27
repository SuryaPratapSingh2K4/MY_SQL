USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student(rollno,name,marks,grade,city) VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

SELECT * FROM student;
SELECT city FROM student;
SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80 AND city = "mumbai";
SELECT * FROM student WHERE marks < 90 OR city = "delhi";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("delhi","mumbai");
SELECT * FROM student WHERE city IN ("gurgaon");
SELECT * FROM student WHERE city NOT IN ("mumbai");
SELECT * FROM student WHERE marks BETWEEN 0 AND 90 LIMIT 3;
SELECT * FROM student WHERE marks > 70 ORDER BY city ASC LIMIT 3;
SELECT * FROM student WHERE marks > 70 ORDER BY city DESC LIMIT 3;
USE college;
SELECT grade,count(name) FROM student GROUP BY grade ORDER BY grade;
SELECT city,count(name) FROM student GROUP BY city HAVING max(marks) > 90;
SELECT city,count(name) FROM student WHERE max(marks) > 90 GROUP BY city;

GENERAL ORDER OF WRITING :-
SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY columns(s) ASC/DSC;