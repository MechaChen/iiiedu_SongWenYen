USE benson;

SHOW TABLES;

-- Q1
SELECT * FROM my_emp;
INSERT INTO benson.my_emp
VALUE(1, 'Patel', 'Ralph', 'rpatel', 795);

-- Q2
SELECT * FROM my_emp;
INSERT INTO my_emp(ID, LAST_NAME, FIRST_NAME, USERID, SALARY)
VALUE(2, 'Dancs', 'Betty', 'bdancs', 860);

-- Q3
SELECT * FROM my_emp;
INSERT INTO my_emp
VALUES 
	(3, 'Biri', 'Ben', 'bbiri', 1100), 
    (4, 'Newman', 'Chad', 'cnewman', 750);


-- Q4
SELECT * FROM my_emp;
SET sql_safe_updates = 0;
UPDATE my_emp
SET LAST_NAME = 'Drexler'
-- 沒有設 Primary Key 的話，需要解除安全才可更改
WHERE ID = '3';
SET sql_safe_updates = 1;

DESC my_emp;

-- Q5
SELECT * FROM my_emp;
SET sql_safe_updates = 0;
UPDATE my_emp
SET salary = 1000
WHERE salary <= 900;
SET sql_safe_updates = 1;

-- Q6
SELECT * FROM information_schema.COLUMNS;

-- Q7
SELECT * FROM my_emp;
SET sql_safe_updates = 0;
DELETE FROM my_emp
WHERE LAST_NAME = Dancs AND FIRST_NAME = Betty; 
SET sql_safe_updates = 1;


-- Q8
SELECT * FROM my_emp;
SET autocommit = 0;
UPDATE my_emp
SET salary = salary*1.1;
SELECT salary FROM my_emp;

SAVEPOINT raiseSal;

SET sql_safe_updates = 0;
DELETE FROM my_emp; 
SELECT * FROM my_emp;

SAVEPOINT deleteMyEMP;

ROLLBACK TO raiseSal;

COMMIT;

SELECT * FROM my_emp;