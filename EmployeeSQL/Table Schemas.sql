--Create Tables and Import Data

CREATE TABLE titles(	
	emp_title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL);
	
CREATE TABLE employees(
	emp_no int PRIMARY KEY NOT NuLL,
	emp_title_id VARCHAR NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(emp_title_id),
	birt_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL);
	
CREATE TABLE departments(
	dept_number VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL);

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	emp_no int PRIMARY KEY NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no));

CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no));

CREATE TABLE salaries(
	emp_no PRIMARY KEY int NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	salary int NOT NULL);

