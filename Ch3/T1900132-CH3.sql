-- Q1
SELECT ename, sal
FROM emp
WHERE sal > 2850;

-- Q2
SELECT ename, deptno
FROM emp
WHERE empno = '7566';

-- Q3
SELECT ename, sal
FROM emp
WHERE sal NOT BETWEEN 1500 AND 2850
ORDER BY sal;

-- Q4
SELECT ename, job, hiredate
FROM emp
WHERE hiredate BETWEEN '1981-02-20' AND '1981-05-01'
ORDER BY hiredate;

-- Q5
SELECT ename, deptno
FROM emp
WHERE deptno IN (10, 30)
ORDER BY ename;

-- Q6
SELECT ename AS 'Employee', sal AS 'Monthly Salary'
FROM emp
WHERE sal > 1500 AND deptno IN (10, 30);

-- Q7
SELECT ename, job, hiredate 
FROM emp
WHERE hiredate >= '1982-01-01';

-- Q8
SELECT *
FROM emp
WHERE mgr IS NULL;

-- Q9
SELECT ename, sal, comm
FROM emp
WHERE comm IS NOT NULL
ORDER BY sal DESC, comm DESC;

-- Q10
SELECT ename, job
FROM emp
WHERE ename LIKE '__a%';

-- Q11
SELECT ename, mgr, deptno
FROM emp
WHERE (ename LIKE '%l%l%' AND deptno = '30') 
	OR (mgr = '7782') ;

-- Q12
SELECT ename, job, sal
FROM emp
WHERE (job IN ('clerk', 'analyst')) 
	AND (sal NOT IN (1000, 3000, 5000));

-- Q13
SELECT ename, sal, comm
FROM emp
WHERE comm > (sal*1.1);


-- CASE ( simple CASE practice )
SELECT empno, ename, sal, job,
	CASE job
		WHEN 'president' THEN sal*1.5
        WHEN 'manager' THEN sal*1.3
        WHEN 'analyst' THEN sal* 1.2
        ELSE sal
	END raised_sal
FROM emp
ORDER BY sal DESC;

-- CASE ( searched CASE )
SELECT empno, ename, sal,
	CASE 
		WHEN sal BETWEEN 0    AND 1000 THEN 'A'
        WHEN sal BETWEEN 1001 AND 2000 THEN 'B'
        WHEN sal BETWEEN 2001 AND 3000 THEN 'C'
        WHEN sal BETWEEN 3001 AND 4000 THEN 'D'
        ELSE 'E'
	END sal_level
FROM emp

