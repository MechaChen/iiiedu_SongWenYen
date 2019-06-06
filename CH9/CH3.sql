USE benson;

-- Q1
SELECT 
	ROUND(MAX(sal), 0) AS 'Maximum', 
    ROUND(MIN(sal), 0) AS 'Mininum',
    ROUND(SUM(sal), 0) AS 'Sum',
    ROUND(AVG(sal), 0) AS 'Average'
FROM emp;

-- Q2
SELECT 
	job, 
    MIN(sal), 
    MAX(sal), 
    SUM(sal),
    AVG(sal) 
FROM emp
GROUP BY job;

-- Q3
SELECT job, COUNT(job)
FROM emp
GROUP BY job;

-- Q4
SELECT COUNT(job) AS 'Number of Managers'
FROM emp
WHERE job = 'manager';

-- Q5
SELECT 
	MAX(sal), 
    MIN(sal), 
    MAX(sal) - MIN(sal) AS 'DIFFERENCE'
FROM emp;

-- Q6
SELECT mgr, empno, MIN(sal)
FROM emp
WHERE mgr IS NOT NULL 
GROUP BY mgr
HAVING MIN(sal) > 1000
ORDER BY MIN(sal) DESC;

-- Q7
SELECT YEAR(hiredate), COUNT(*) AS '該年新進員工數量'
FROM emp
GROUP BY YEAR(hiredate);