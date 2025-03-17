# SQL-challenge

Instructions

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.


Data Modeling

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBDLinks to an external site..

!["quickdbd_image.png"](Employee_SQL\quickdbd_image.png)


Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.


Be sure to create the tables in the correct order to handle the foreign keys.


Import each CSV file into its corresponding SQL table.

```sql
CREATE TABLE departments(
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE dept_emp(
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE dept_manager(
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_Dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE employees(
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
    "birthdate" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE salaries(
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE titles(
    "title_id" VARCHAR   NOT NULL,
    "title" VACHAR   NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE dept_emp ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES employees ("emp_no");

ALTER TABLE dept_emp ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES departments ("dept_no");

ALTER TABLE dept_manager ADD CONSTRAINT "fk_Dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES departments ("dept_no");

ALTER TABLE dept_manager ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES employees ("emp_no");

ALTER TABLE employees ADD CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES titles ("title_id");

ALTER TABLE salaries ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES employees ("emp_no");
```

Data Analysis (This is included in quary.sql)

1.List the employee number, last name, first name, sex, and salary of each employee.

2.List the first name, last name, and hire date for the employees who were hired in 1986.

3.List the manager of each department along with their department number, department name, employee number, last name, and first name.

4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6.List each employee in the Sales department, including their employee number, last name, and first name.

7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

