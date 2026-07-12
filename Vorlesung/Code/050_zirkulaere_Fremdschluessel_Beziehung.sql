-- @block
-- create table department without foreign key constraint
DROP DATABASE IF EXISTS hr;
CREATE DATABASE hr;
USE hr;

CREATE TABLE department (
	department_id INT NOT NULL,
	department_name VARCHAR(30) NOT NULL,
	location_id INT,
    manager_id INT NOT NULL,
	PRIMARY KEY (department_id)
);


-- @block
-- create table employee including foreign key to department table
CREATE TABLE employee (
	employee_id INT NOT NULL,
	first_name VARCHAR(20),
	last_name VARCHAR(25) NOT NULL,
	email VARCHAR(25) NOT NULL,
	phone_number VARCHAR(20),
	hire_date DATE NOT NULL,
	job_id VARCHAR(10) NOT NULL,
	salary DECIMAL(8, 2) NOT NULL,
	commission_pct DECIMAL(2, 2),
	manager_id INT,
	department_id INT NOT NULL,
	PRIMARY KEY (employee_id),
	FOREIGN KEY (department_id) REFERENCES department(department_id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (manager_id) REFERENCES employee(employee_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- @block
-- add foreign key constraint to department table
ALTER TABLE department 
    ADD FOREIGN KEY (manager_id) REFERENCES employee(employee_id) ON UPDATE CASCADE ON DELETE RESTRICT
;

-- @block
-- show foreign key constraints
SELECT
  TABLE_NAME,
  COLUMN_NAME,
  REFERENCED_TABLE_NAME,
  REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME IS NOT NULL
