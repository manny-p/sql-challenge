-- List the following details of each employee: employee number, last name, first name, sex, salary
SELECT employees.emp_no,
       employees.last_name,
       employees.first_name,
       employees.sex,
       salaries.salary
FROM employees
         JOIN salaries ON employees.emp_no = salaries.emp_no;

-- List the first name, last name, and hire date for employees who were hired in 1986
SELECT hire_date,
       first_name,
       last_name
FROM employees
WHERE DATE_PART('year', hire_date) = 1986;

--List the manager of each department with dept_no, dept_name, manager's emp_no, first and last name
SELECT dept_managers.dept_no,
       departments.dept_name,
       dept_managers.emp_no,
       employees.last_name,
       employees.first_name
FROM dept_managers
         JOIN departments
              ON dept_managers.dept_no = departments.dept_no
         JOIN employees
              ON dept_managers.emp_no = employees.emp_no;

--List the department of each employee with the following information: emp_no, last name, first name, dept_name
SELECT dept_emp.emp_no,
       employees.last_name,
       employees.first_name,
       departments.dept_name
FROM employees
         JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
         JOIN departments ON departments.dept_no = dept_emp.dept_no;

--List first name, last name, and sex for employees whos first name is "Hercules" nad last names begins with B


--List all employees in Sales department including: emp_no, last name, first name, and dept name


--List all employees in Sales and Development Departments including emp_no, last name, first name, dept name


--In descending order, list the frequency count of employee last names





