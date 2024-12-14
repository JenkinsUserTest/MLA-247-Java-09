SELECT last_name, salary
FROM employees
WHERE salary >
 (SELECT salary
 FROM employees
 WHERE last_name = 'Abel');
 
SELECT last_name, job_id, salary
FROM employees
WHERE salary = 
 (SELECT MIN(salary)
 FROM employees);
 
 SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) >
 (SELECT MIN(salary)
 FROM employees
WHERE department_id = 50);

SELECT last_name, job_id
FROM employees
WHERE job_id =
 (SELECT job_id
 FROM employees
 WHERE last_name = 'Haas');
 
 SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY
 (SELECT salary
 FROM employees
WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ALL
 (SELECT salary
 FROM employees
WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

SELECT employee_id,salary,last_name FROM employees M
WHERE EXISTS
(SELECT employee_id FROM employees W
WHERE (W.manager_id=M.employee_id) AND W.salary > 10000);

SELECT emp.last_name
FROM employees emp
WHERE emp.employee_id NOT IN
 (SELECT mgr.manager_id
 FROM employees mgr);


//co-related sub query

SELECT employee_id, first_name, salary
FROM employees e1
WHERE salary > (SELECT AVG(salary) FROM employees e2 WHERE e1.department_id = e2.department_id);
     
    

