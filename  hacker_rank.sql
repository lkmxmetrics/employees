USE employees;
SELECT * FROM employees;

SELECT first_name, LENGTH(first_name)
FROM employees
WHERE LENGTH(first_name) IN (
	SELECT MAX(LENGTH(first_name))
    FROM employees)
LIMIT 1;

SELECT first_name, LENGTH(first_name)
FROM employees
WHERE LENGTH(first_name) IN (    
    SELECT MIN(LENGTH(first_name))
    FROM employees
    )
LIMIT 1;

SELECT first_name
FROM employees


SELECT CITY,LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY) IN (
  SELECT MAX(LENGTH(CITY))
  FROM STATION
  UNION
  SELECT MIN(LENGTH(CITY))
  FROM STATION
)
ORDER BY LENGTH(CITY) DESC,CITY ASC LIMIT 2;



SELECT CITY
FROM STATION
ORDER BY LENGTH(CITY) ASC
LIMIT 1;


select h.hacker_id, h.name
from submissions s
inner join challenges c
on s.challenge_id = c.challenge_id
inner join difficulty d
on c.difficulty_level = d.difficulty_level 
inner join hackers h
on s.hacker_id = h.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc;

USE employees;
SELECT DISTINCT(first_name)
FROM employees
WHERE RIGHT(first_name, 1) NOT IN ('a','e','i','o','u')
AND LEFT(first_name, 1) NOT IN ('a','e','i','o','u');



USE employees;
SELECT DISTINCT(first_name)
FROM employees
WHERE LEFT(first_name, 1) NOT IN ('a','e','i','o','u');


SELECT e.first_name
FROM employees e
JOIN salaries s 
ON s.emp_no= e.emp_no
WHERE salary > 80000;


