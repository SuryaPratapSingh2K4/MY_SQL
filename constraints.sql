USE college;

CREATE TABLE temp1(
	id INT,
    name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(20),
    PRIMARY KEY (id)
);

INSERT INTO temp1 (id,name,age,city) VALUES
(101,"surya",21,"cuttack"),
(102,"pratap",22,"bbsr"),
(103,"singh",25,"mumbai"),
(104,"siu",27,"delhi"),
(105,"siurya",18,"chennai");

SELECT * FROM temp1;

CREATE TABLE temp2(
	temp_id INT,
    FOREIGN KEY (temp_id) REFERENCES temp1(id),
    surname VARCHAR(20)
);

INSERT INTO temp2 (surname) VALUES
("singh"),
("patra");

SELECT * FROM temp2;

CREATE TABLE temp3(
	id INT,
    salary INT DEFAULT 25000
);

INSERT INTO temp3 (id) VALUES(10);
SELECT * FROM temp3;

CREATE TABLE city(
	id INT PRIMARY KEY,
    city VARCHAR(60),
    age INT,
    CONSTRAINT age_check CHECK (age >= 18 AND city="DELHI")
);

INSERT INTO city (id,city,age) VALUES
(201,"delhi",18);

SELECT * FROM city;
