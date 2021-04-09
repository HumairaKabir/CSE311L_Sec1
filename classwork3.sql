Activity 01 
Solution:
	SELECT last_name, hire_date
	FROM emps
	WHERE hire_date LIKE '%94';

Activity 02 
Solution:
	SELECT last_name, salary, commission_pct
	FROM emps
	WHERE commission_pct IS NOT NULL
	ORDER BY salary DESC, commission_pct DESC;
	
Activity 03 
Solution:
	SELECT last_name
	FROM emps
	WHERE last_name LIKE '%a%'
	AND last_name LIKE '%e%';

Activity 04 
Solution:
	SELECT e.last_name, e.department_id, d.department_name
	FROM emps e, depts d
	WHERE e.department_id = d.department_id;

Activity 05
Solution:
	SELECT e.last_name, d.department_name, d.location_id, l.city
	FROM emps e, depts d, locs l
	WHERE e.department_id = d.department_id
	AND d.location_id = l.location_id
	AND e.commission_pct IS NOT NULL;

Activity 06
Solution:
	SELECT e.last_name, e.job_id, e.department_id,d.department_name
	FROM emps e JOIN depts d
	ON (e.department_id = d.department_id)
	JOIN locs l
	ON (d.location_id = l.location_id)
	WHERE LOWER(l.city) = 'toronto';

Activity 07
Solution:
	SELECT last_name, salary, commission_pct
	FROM emps
	WHERE commission_pct IS NOT NULL
	ORDER BY salary DESC, commission_pct DESC;

Activity 08
Solution:
	SELECT w.last_name "Employee", w.employee_id "EMP#",
	m.last_name "Manager", m.employee_id "Mgr#"
	FROM emps w join emps m
	ON (w.manager_id = m.employee_id);

Activity 09
Solution:
	SELECT ROUND(MAX(salary),0) "Maximum",
	ROUND(MIN(salary),0) "Minimum",
	ROUND(SUM(salary),0) "Sum",
	ROUND(AVG(salary),0) "Average"
	FROM emps;

Activity 10
Solution:
	SELECT job_id, ROUND(MAX(salary),0) "Maximum",
	ROUND(MIN(salary),0) "Minimum",
	ROUND(SUM(salary),0) "Sum",
	ROUND(AVG(salary),0) "Average"
	FROM emps
	GROUP BY job_id;

Activity 11
Solution:
	SELECT job_id, COUNT(*)
	FROM emps
	GROUP BY job_id;

Activity 12
Solution:
	SELECT manager_id, MIN(salary)
	FROM emps
	WHERE manager_id IS NOT NULL
	GROUP BY manager_id
	HAVING MIN(salary) > 6000
	ORDER BY MIN(salary) DESC;

Home Work
Solution:
	SELECT d.department_name "Name", d.location_id "Location ",
	COUNT(*) "Number of People",ROUND(AVG(salary),2) "Salary"
	FROM emps e, depts d
	WHERE e.department_id = d.department_id
	GROUP BY d.department_name, d.location_id;