DROP TABLE student;

CREATE TABLE student (
	student_id INT NOT NULL,
    student_name VARCHAR(20) NOT NULL,
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
