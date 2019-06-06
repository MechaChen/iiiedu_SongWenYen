USE benson;

-- Q1
CREATE TABLE DEPARTMENT 
(
	id NUMERIC(7),
    name VARCHAR(24)
);

DESC department;

-- Q2
SELECT * FROM dept;

INSERT INTO department(id, name)
	SELECT deptno, dname
    FROM dept;
    
SELECT * FROM department, dept;

-- Q3
CREATE TABLE EMPLOYEE
(
	id NUMERIC(7),
    last_name VARCHAR(24),
    first_name VARCHAR(24),
    dept_id NUMERIC(7)
);

DESC employee;

-- Q4
ALTER TABLE employee
MODIFY last_name VARCHAR(40);

DESC employee;

-- Q5 
CREATE TABLE EMPLOYEE2
AS
SELECT 
	empno AS ID, 
    ename AS LAST_NAME, 
    deptno AS DEPT_ID
FROM emp;

DESC employee2;

-- Q6
DROP TABLE employee;

-- Q7
ALTER TABLE employee2
RENAME TO EMPLOYEE;

DESC employee;

-- Q8
ALTER TABLE employee
DROP last_name;

DESC employee;

-- Q9
ALTER TABLE employee
ADD COLUMN (
	SALARY NUMERIC(7)
);

DESC employee;
