--creating a table
CREATE TABLE student_table(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(20),
    student_specialization VARCHAR(10),
    student_grade DECIMAL(4,2)
);

-- checking whether table is created or not
DESCRIBE student_table;

--adding an extra column to the table
ALTER TABLE student_table ADD major VARCHAR(20);

DESCRIBE student_table;

-- one way of inserting data into the table
INSERT INTO student_table(student_name, student_specialization, student_grade, major) VALUES('Nibedita', 'EE', 30.30, 'Maths');
INSERT INTO student_table(student_name, student_specialization, student_grade, major) VALUES('Vishal', 'IT', 20.09, 'control system');
INSERT INTO student_table(student_name, student_specialization, student_grade, major) VALUES('Rahul', 'BIO', 22.23, 'BioChemistry');

-- another way of inserting data into the table
--INSERT INTO student_table VALUES(2, 'Vishal', 'Mathematics');

--UPDATING TABLE
UPDATE student_table SET major = 'POWER SYSTEM' WHERE major = 'MATHS';

-- deleting table/ column or row of the table
DELETE FROM student_table WHERE student_id=4 AND student_name = 'Rahul';

SELECT * FROM student_table;

DROP TABLE student_table;