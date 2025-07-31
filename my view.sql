USE college;
TABLE student1;

CREATE VIEW view1 as
SELECT regno,full_name,marks,city FROM student1;

SELECT * FROM view1;