USE employees;

# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M' ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE ('e%') ORDER BY emp_no DESC;

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT CONCAT_WS(' ', first_name, last_name) FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT datediff(curdate(), hire_date) FROM employees WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31') AND (birth_date LIKE '%-12-25') ORDER BY birth_date, hire_date DESC;

SELECT * FROM employees WHERE (last_name LIKE '%q%') AND (last_name NOT LIKE '%qu%');

SELECT * FROM employees WHERE MOD(emp_no, 2)=0 LIMIT 10;