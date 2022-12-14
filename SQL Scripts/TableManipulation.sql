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
