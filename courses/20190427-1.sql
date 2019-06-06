select * from emp;


#max,min,sum,avg,count

select max(ename),max(hiredate),max(sal)
from emp;

#wrong
select ename,job,avg(sal),sum(sal)
from emp;

# null ignore
select sum(sal),avg(sal),sum(comm),avg(comm),avg(ifnull(comm,0))
from emp;

# count*(row)
select count(*)
from emp;

select count(comm)
from emp;

select job
from emp;

select distinct job
from emp;

select count(distinct job)
from emp;

select count(*)
from emp
where job='manager';

#dept sum(sal),avg(sal)
#1 php-->dept-->deptno -->10,20,30
select distinct deptno
from emp;

#2 for each
select sum(sal),avg(sal)
from emp
where deptno=10;

select sum(sal),avg(sal)
from emp
where deptno=20;

select sum(sal),avg(sal)
from emp
where deptno=30;

#group by-->sort-->deptno

select sum(sal),avg(sal)
from emp
group by deptno;

select deptno,sum(sal),avg(sal)
from emp
group by deptno;

#job

select job,count(*)
from emp
group by job;

select job,count(*)
from emp
group by job
having count(*)>=3;

#year 

select *
from emp;

select distinct year(hiredate)
from emp;

select distinct date_format(hiredate,'%Y')
from emp;

select year(hiredate),count(*)
from emp
group by year(hiredate)
having count(*)>3;

select year(hiredate),deptno,count(*)
from emp
group by year(hiredate),deptno;

select *
from emp
where mgr is null;

select deptno,job
from emp
group by deptno,job
order by deptno,job;

select deptno,job
from emp
order by deptno,job;

select deptno,GROUP_CONCAT(job SEPARATOR ',')
from emp
group by deptno;

select deptno,GROUP_CONCAT(distinct job order by job asc SEPARATOR ',')
from emp
group by deptno;