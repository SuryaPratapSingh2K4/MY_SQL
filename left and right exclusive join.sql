USE college;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;