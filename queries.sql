use employees;

SELECT * 
FROM dept_manager;

SELECT * 
FROM employees
WHERE hire_date 
	BETWEEN '1990-01-01' AND '1995-01-01';
    
SELECT * 
FROM dept_manager
WHERE emp_no IN(
	SELECT emp_no
	FROM employees
	WHERE hire_date 
		BETWEEN '1990-01-01' AND '1995-01-01')
    ;
    
SELECT *
FROM employees as e
WHERE EXISTS(
	SELECT *
    FROM titles as t
	WHERE t.emp_no = e.emp_no
    AND t.title = 'Assistant Engineer')
GROUP BY e.emp_no
ORDER BY last_name;

USE magic; 

SELECT 
    SUM(owned)
FROM
    tatyova;

	