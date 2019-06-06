-- Q1
SELECT CURDATE()
FROM emp;

-- Q2
SELECT 
	empno, 
    ename, 
    sal, 
    ROUND(sal*1.15, 0) AS 'New Salary'
FROM emp;

-- Q3
SELECT 
	empno, 
    ename, 
    sal, 
    ROUND(sal*1.15, 0) AS 'New Salary',
    ROUND(sal*0.15, 0) AS 'Increase'
FROM emp;

-- Q4
SELECT empno, ename,  DATE_FORMAT(hiredate,  '%W, %D of %M')
FROM emp;

-- Q5
SELECT 
	ename,
    ABS(PERIOD_DIFF(
		DATE_FORMAT(hiredate, '%Y%m'),
		DATE_FORMAT(now(), '%Y%m')
    )) AS "MONTHS_WORKED"
FROM emp;

-- Q6
SELECT 
	CONCAT(ename, 
		  ' earns ', 
          ROUND(sal, 1), 
          ' monthly but wants ', 
          ROUND(sal*3,1)
          ) AS 'Dream Salary'
FROM emp;

-- Q7
SELECT 
	ename, 
    LPAD(sal, 15, '$') AS 'SALARY'
FROM emp;

-- Q8
SELECT 
	ename, 
    hiredate, 
    WEEKDAY(hiredate) + 1, 
    DATE_FORMAT(hiredate, "%W")
FROM emp
ORDER BY WEEKDAY(hiredate) ;

-- Q9
SELECT ename, ifnull(comm, 'No Commission') AS 'COMM' 
FROM emp;

-- Q10
SELECT CONCAT(RPAD(ename, 7, " "), REPEAT("*", ROUND(sal / 100) )) AS EMPLOYEE_AND_THEIR_SALARIES, sal
FROM emp
ORDER BY sal DESC;