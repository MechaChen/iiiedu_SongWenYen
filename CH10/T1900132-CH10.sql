
-- Q1
CREATE VIEW EMP_VU
AS
SELECT 
	empno AS EMPLOYEE, 
	ename, 
	deptno
FROM emp;

-- Q2
SELECT * FROM EMP_VU;

-- Q3
SELECT ename, deptno
FROM EMP_VU;

-- Q4
CREATE VIEW DEPT20
AS
SELECT 
	empno AS 'EMPLOYEE_ID', 
    ename AS 'EMPLOYEE', 
    deptno AS 'DEPARTMENT_ID'
FROM emp
WHERE deptno = 20
WITH CHECK OPTION;

-- Q5
DESC DEPT20;
SELECT * FROM DEPT20;

-- Q6
UPDATE DEPT20
SET deptno = 30
WHERE EMPLOYEE = 'SMITH';

-- Q7
SELECT *
FROM emp;

SELECT * 
FROM salgrade;

CREATE VIEW SALARY_VU 
AS
SELECT 
	e.ename AS 'Employee', 
    d.dname AS 'Department', 
    e.sal AS 'Salary', 
    s.grade AS 'Grade'
FROM 
	emp AS e, 
    dept AS d, 
    salgrade AS s;

SELECT * FROM SALARY_VU;
    