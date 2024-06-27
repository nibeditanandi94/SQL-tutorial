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
INSERT INTO student_table(student_name, student_specialization, student_grade, major) VALUES('Anna', 'BIO', 22.23, 'BioChemistry');
INSERT INTO student_table(student_name, student_specialization, student_grade, major) VALUES('Bobby', 'BIOTest1', 22.23, 'BioChemistry');
INSERT INTO student_table(student_name, student_specialization, student_grade, major) VALUES('Rahul', 'BIOTest2', 22.23, 'BioChemistry');

-- another way of inserting data into the table
--INSERT INTO student_table VALUES(2, 'Vishal', 'Mathematics');

--UPDATING TABLE
UPDATE student_table SET major = 'POWER SYSTEM' WHERE major = 'MATHS';

-- deleting table/ column or row of the table
DELETE FROM student_table WHERE student_id=4 AND student_name = 'Rahul';

SELECT * FROM student_table;

SELECT COUNT(*) FROM student_table WHERE student_name='Rahul';

-- basic queries
SELECT student_table.student_name, student_table.student_grade FROM student_table
ORDER BY student_name ASC, student_grade; -- It will order first with student_name, then with student_grade

-- basic queries using 'LIMIT' & filtering
SELECT student_table.student_grade, student_table.student_name FROM student_table WHERE student_grade=22.23 LIMIT 2;

--basic queries using more with filtering
SELECT * FROM student_table WHERE student_grade>20.00 AND student_name<>'Rahul';

--basic queries using IN keyword
SELECT * FROM student_table WHERE student_grade IN(22.23, 22.23) AND student_name IN('Anna', 'Bobby', 'Rahul') 
ORDER BY student_id DESC;

DROP TABLE student_table;