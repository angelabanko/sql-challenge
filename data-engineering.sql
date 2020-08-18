-- DATA ENGINEERING

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
	emp_title_id VARCHAR   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    SEX VARCHAR   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * from Employees;

CREATE TABLE Departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * from Departments;

CREATE TABLE Department_Employees (
    emp_no INT   NOT NULL,
	dept_no VARCHAR   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * from Department_Employees;

CREATE TABLE Department_Manager (
    dept_no VARCHAR   NOT NULL,
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * from Department_Manager;


CREATE TABLE Salaries (
    emp_no int   NOT NULL,
	salary INTEGER   NOT NULL,    
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * from Salaries;

CREATE TABLE Titles (
	title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL
);

SELECT * from Titles;