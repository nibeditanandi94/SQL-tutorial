CREATE TABLE employee(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(10),
    employee_salary DECIMAL(5, 3)
);


DESCRIBE employee;

-- delete employee DROP TABLE employee;

ALTER TABLE employee DROP COLUMN employee_salary;