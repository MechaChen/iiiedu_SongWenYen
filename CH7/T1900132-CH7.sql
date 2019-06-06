use benson;

-- Q1
SELECT ename, hiredate, deptno
FROM emp
WHERE deptno = (
	SELECT deptno
    FROM emp
    WHERE ename = 'Blake'
);

-- Q2
SELECT ename, hiredate
FROM emp
WHERE hiredate > (
	SELECT hiredate
    FROM emp
    WHERE ename = 'Blake'
);

-- Q3
SELECT avg(sal)
FROM emp;

SELECT empno, ename, sal
FROM emp
WHERE sal > (
	SELECT avg(sal)
	FROM emp
)
ORDER BY sal DESC;


-- Q4
 SELECT empno, ename, deptno
 FROM emp
 WHERE deptno IN (
	SELECT deptno
    FROM emp
    WHERE ename LIKE '%T%'
 )
 ORDER BY deptno;
 
 -- Q5
 SELECT *
 FROM dept;
 
 SELECT ename, deptno, job
 FROM emp
 WHERE deptno = (
	SELECT deptno
    FROM dept
    WHERE loc = 'dallas'
 );
 
 
 -- Q6
 SELECT empno
 FROM emp
 WHERE ename = 'King';
 
 SELECT ename, sal, mgr
 FROM emp
 WHERE mgr = (
	SELECT empno
    FROM emp
    WHERE ename = 'King'
 );
 
 -- Q7
 SELECT *
 FROM dept;
 
 SELECT empno, ename, job, deptno
 FROM emp
 WHERE deptno = (
	SELECT deptno
    FROM dept
    WHERE dname = 'Sales'
 );
 
 -- Q8
 SELECT empno, ename, sal, deptno
 FROM emp
 WHERE sal > (
	SELECT avg(sal)
    FROM emp
	)
 AND deptno IN (
	SELECT deptno
	FROM emp
	WHERE ename LIKE '%T%'
    )
;

-- Q9
SELECT deptno
FROM emp
WHERE comm IS NOT NULL;

SELECT ename, empno, sal, deptno
FROM emp
WHERE deptno IN (
	SELECT deptno
    FROM emp
    WHERE comm IS NOT NULL
);

-- Q10
SELECT deptno
FROM dept
WHERE loc = 'Dallas';

SELECT sal, comm
FROM emp
WHERE deptno = (
	SELECT deptno
	FROM dept
	WHERE loc = 'Dallas'
);

SELECT ename, deptno, sal
FROM emp
WHERE (sal, ifnull(comm, 'No')) IN (
	SELECT sal, ifnull(comm, 'No')
	FROM emp
	WHERE deptno = (
		SELECT deptno
		FROM dept
		WHERE loc = 'Dallas'
	)
);

-- Q11
SELECT sal, comm
FROM emp
WHERE ename = 'Scott';


SELECT ename, hiredate, sal
FROM emp
WHERE sal = (
	SELECT sal
    FROM emp
    WHERE ename = 'Scott'
)
AND ifnull(comm, 'No') = (
	SELECT ifnull(comm, 'No')
    FROM emp
    WHERE ename = 'Scott'
)
AND ename != 'Scott';

-- Q12
SELECT ename, hiredate, sal
FROM emp
WHERE sal > ALL(
	SELECT sal
    FROM emp
    WHERE job = 'Clerk'
)
ORDER BY sal DESC;

