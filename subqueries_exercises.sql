USE employees;

SELECT *
 FROM employees
 WHERE hire_date IN (
     SELECT hire_date
     FROM employees
     WHERE emp_no = 101010
     );

SELECT title
 FROM titles
 WHERE emp_no IN(
     SELECT emp_no
     FROM employees
     WHERE first_name = 'Aamod'
     );

SELECT first_name, last_name
 FROM employees
 WHERE gender = 'f' AND emp_no IN(
     SELECT emp_no
     FROM dept_manager
     WHERE to_date > NOW()
     );

SELECT dept_name
 FROM departments
 WHERE dept_no IN(
     SELECT dept_no
     FROM dept_manager
     WHERE to_date > NOW() AND emp_no IN(
         SELECT emp_no
         FROM employees
         WHERE gender = 'f'
         )
     );

SELECT last_name, first_name
 FROM employees
 WHERE emp_no IN(
     SELECT emp_no
     FROM salaries
     WHERE salary IN(
         SELECT MAX(salary)
         FROM salaries
         )
     );