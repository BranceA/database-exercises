USE employees;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ', ', e.last_name) AS Department_Manager
 FROM dept_manager
 JOIN departments d on dept_manager.dept_no = d.dept_no
 JOIN employees e on dept_manager.emp_no = e.emp_no
 WHERE to_date LIKE '9999%'
 ORDER BY d.dept_name;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ', ', e.last_name) AS Department_Manager
 FROM dept_manager
 JOIN departments d on dept_manager.dept_no = d.dept_no
 JOIN employees e on dept_manager.emp_no = e.emp_no
 WHERE to_date LIKE '9999%' AND e.gender = 'f'
 ORDER BY d.dept_name;

SELECT t.title AS Title, COUNT(*) AS Count
 FROM dept_emp
 JOIN employees e on dept_emp.emp_no = e.emp_no
 JOIN titles t on e.emp_no = t.emp_no
 WHERE dept_no = 'd009' AND t.to_date LIKE '9999%' AND dept_emp.to_date > now()
 GROUP BY t.title;

SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ', ', e.last_name) AS Department_Manager, s.salary AS Salary
 FROM dept_manager
 JOIN departments d on dept_manager.dept_no = d.dept_no
 JOIN employees e on dept_manager.emp_no = e.emp_no
 JOIN salaries s on e.emp_no = s.emp_no
 WHERE dept_manager.to_date LIKE '9999%' AND s.to_date LIKE '9999%'
 ORDER BY d.dept_name;
