

DROP TABLE student;

CREATE TABLE student (
	student_id INT,
    student_name VARCHAR(20),
    major varchar(20),
    PRIMARY KEY (student_id)
);

DESCRIBE student;

-- Add a Column to an exsiting table
ALTER TABLE student ADD gpa DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN gpa;

-- student_id, student_name, major 
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');

-- can specfiy which columns the values should be inserted into
INSERT INTO student(student_id, student_name) VALUES(3, 'Claire');

INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

SELECT * FROM student;

-- CONSTRAINTS
-- can also use UNIQUE to signify that each entry in a column has to be unique
CREATE TABLE student (
	student_id INT NOT NULL,
    student_name VARCHAR(20) NOT NULL,
    major varchar(20) UNIQUE,
    PRIMARY KEY (student_id)
);

-- DEFAULT allows a value to be inserted if one is not provided
CREATE TABLE student (
	student_id INT,
    student_name VARCHAR(20),
    major varchar(20) DEFAULT 'undecided',
    PRIMARY KEY (student_id)
);

INSERT INTO student(student_id, student_name) VALUES(1, 'Jack');

-- AUTO_INCREMENT makes it so the value indexs forward everytime a new value is inserted
CREATE TABLE student (
	student_id INT AUTO_INCREMENT,
    student_name VARCHAR(20),
    major varchar(20),
    PRIMARY KEY (student_id)
);
INSERT INTO student(student_name, major) VALUES('Jack', 'Biology');
INSERT INTO student(student_name, major) VALUES('Kate', 'Biology');

-- UPDATE and DELETE
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology';

UPDATE student
SET major = 'Bio Chem'
WHERE major = 'Biology' OR major = 'Chemistry';

UPDATE student
SET major = 'undecided';

-- DELETEs all the rows form the table
DELETE FROM student;

DELETE FROM student
WHERE major = 'Biology';