USE college;
TABLE student;
CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);
DROP TABLE teacher;
SELECT * FROM dept;
INSERT INTO dept VALUES
(101,"science"),
(102,"English"),
(103,"Hindi"),
(104,"Odia");
INSERT INTO dept VALUES (102,"Bengali");
UPDATE dept
SET id = 105
WHERE id = 102;
INSERT INTO teacher VALUES
(1,"adam",101),
(2,"milne",102),
(3,"sam",103),
(4,"clark",104),
(5,"kent",104);
UPDATE teacher
SET dept_id = 102
WHERE id = 5;
SELECT * FROM teacher;
