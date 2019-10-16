USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name, first_name
 FROM employees
 WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
 GROUP BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name) AS Name, COUNT(*)
 FROM employees
 WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
 GROUP BY first_name, last_name
 ORDER BY COUNT(*) DESC;

SELECT COUNT(first_name), gender
 FROM employees
 WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
 GROUP BY gender;