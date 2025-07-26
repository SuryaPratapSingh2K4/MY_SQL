USE college;
TABLE student;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(rollno) FROM student;
SELECT SUM(marks) FROM student;

SELECT city,count(rollno) FROM student GROUP BY city;
SELECT city,count(rollno) FROM student GROUP BY city ORDER BY city ASC;
SELECT city,max(marks) FROM student GROUP BY city ORDER BY city ASC;
SELECT city,avg(marks) FROM student GROUP BY city ORDER BY city ASC;