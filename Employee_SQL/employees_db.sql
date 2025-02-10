create table titles(
	title_id varchar not null primary key,
	title varchar not null	
);

select * from titles;

create table departments(
	dept_no varchar not null primary key,
	dept_name varchar not null
);

select * from departments;

create table dept_emp(
	emp_no int not null,
	dept_no varchar not null
);

select * from dept_emp;

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null
);

select * from dept_manager;

create table Employees(
	emp_no int not null primary key,
	emp_title_id varchar not null,
	birthdate date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null
);

Select * from employees;

create table salaries(
	emp_no int not null primary key,
	salary int not null	
);

select * from salaries;
