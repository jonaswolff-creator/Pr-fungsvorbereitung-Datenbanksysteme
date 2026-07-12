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

ALTER TABLE department 
    ADD FOREIGN KEY (manager_id) REFERENCES employee(employee_id) ON UPDATE CASCADE ON DELETE RESTRICT
;

SET FOREIGN_KEY_CHECKS=0;
INSERT INTO department (department_id, department_name, manager_id) VALUES ( 10, 'Administration', 100);
INSERT INTO employee VALUES ( 100, 'Steven', 'King', 'SKING@example.com', '515.123.4567', STR_TO_DATE('17-JUN-1987', '%d-%M-%Y'), 'AD_PRES', 24000, NULL, NULL, 10 );
SET FOREIGN_KEY_CHECKS=1;