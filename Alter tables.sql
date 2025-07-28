USE college;
SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT ;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
RENAME TO student1;

SELECT * FROM student1;

ALTER TABLE student1
CHANGE COLUMN rollno regno INT;

ALTER TABLE student1
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student1
MODIFY age VARCHAR(2);

ALTER TABLE student1
CHANGE column age stud_age INT;

INSERT INTO student1 (regno,name,marks,stud_age) VALUES
(107,"meow",69,100);

UPDATE student1
SET grade = "D"
where regno = 107;

UPDATE student1
SET city = "Delhi"
where regno = 107;

TRUNCATE TABLE student1;
SELECT * FROM student1;

ALTER TABLE student1
CHANGE column name full_name VARCHAR(50);
SET SQL_SAFE_UPDATES = 0;
DELETE FROM student1
WHERE marks < 80;
ALTER TABLE student1
DROP COLUMN grade;