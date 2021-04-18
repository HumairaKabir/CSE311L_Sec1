
Activity 01 
Solution:
	SELECT last_name, hire_date
	FROM emps
	WHERE department_id = (SELECT department_id
			       FROM emps
			       WHERE last_name = 'Zlotkey')
	AND last_name <> 'Zlotkey';

Activity 02 
Solution:
	SELECT employee_id, last_name,salary
	FROM emps
	WHERE salary > (SELECT AVG(salary)
				FROM emps)
	ORDER BY salary;

Activity 03
Solution:
	SELECT last_name, salary
	FROM emps
	WHERE manager_id = (SELECT employee_id
			    FROM emps
			    WHERE last_name = 'King');

Activity 04
Solution:
	SELECT employee_id, last_name, salary
	FROM emps
	WHERE department_id IN (SELECT department_id
				FROM emps
				WHERE last_name like '%u%')
	AND salary > (SELECT AVG(salary)
		      FROM emps);

Activity 05
Solution:
	CREATE TABLE Employees (
	Emp_ID INTEGER, F_Name VARCHAR(25),L_Name VARCHAR(25),Mail VARCHAR(25),
	p_num INTEGER,Hired DATE,Job VARCHAR(25),sal INTEGER,
	Comission INTEGER,Manager_num INTEGER,Depart_num INTEGER);

	INSERT INTO Employees VALUES 
	(101,'Alan', 'Smith','askee',51146523,2006-06-18,'PRESS',2000,80,100,90),
	(102,'Sultan', 'Nader','snader',5151234567,2006-06-17,'PRESS',2400,NULL,NULL,90),
	(103,'Mohd', 'Rasheed','mreed',5156565,2006-06-19,'PRESS',2200,NULL,100,80),
	(104,'Brian', 'Wallace','bwalla',515468520,2006-06-20,'PRESS',2400,20,60,90),
	(105,'Peter', 'Hilton','philt',515222220,2006-06-23,'AD_PRESS',2300,22,63,90);

	CREATE TABLE EmployeeMerge AS
	SELECT * FROM Employees e JOIN Emps ec on e.Emp_id = ec.Employee_id;

Activity 06
Solution:
	CREATE TABLE emp
	(ID iNTEGER(7),
	LAST_NAME VARCHAR(25),
	FIRST_NAME VARCHAR(25),
	DEPT_ID INTEGER(7));
	
	a)ALTER TABLE EMP
	  MODIFY LAST_NAME VARCHAR (50);
	
	b)CREATE TABLE EMPLOYEES2 (
	  ID INTEGER(7),
	  FIRST_NAME VARCHAR(25),
	  LAST_NAME VARCHAR(50),
	  SALARY FLOAT(10,2),
	  DEPT_ID INTEGER(7));
	
	c)DROP TABLE emp;
	
	d)RENAME TABLE employees2 TO emp;
	
	e)ALTER TABLE emp
	  DROP COLUMN FIRST_NAME;


