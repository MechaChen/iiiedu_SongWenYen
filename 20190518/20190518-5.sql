#1
select deptno 
from emp where 
ename ='blake';

select ename,hiredate
from emp
where deptno=(select deptno 
from emp where 
ename ='blake');

#2
select hiredate
from emp
where ename='blake';

select ename,hiredate
from emp
where hiredate >(
select hiredate
from emp
where ename='blake'
);

#3
select avg(sal)
from emp;

select empno,ename,sal
from emp
where sal>(
select avg(sal)
from emp
)
order by sal desc;

#4
select deptno
from emp
where ename like '%T%';

select empno,ename
from emp
where deptno in(
select deptno
from emp
where ename like '%T%'
);

#5
select deptno
from dept
where loc='dallas';

select ename,deptno,job
from emp
where deptno in(
select deptno
from dept
where loc='dallas');

#6
select empno
from emp
where ename='king';

select *
from emp;

select ename,sal
from emp
where mgr=(
select empno
from emp
where ename='king'
);

#7
select deptno
from dept
where dname='sales';

select deptno,ename,job
from emp
where deptno=(
select deptno
from dept
where dname='sales'
);

#8
select empno,ename,sal
from emp
where sal>(
select avg(sal)
from emp
) 
and 
deptno in(
select deptno
from emp
where ename like '%T%'
);

#9
select deptno,sal
from emp
where comm is not null;

select *
from emp
where (deptno,sal) in(
select deptno,sal
from emp
where comm is not null
);

#10

select sal,ifnull(comm,'No')
from emp
where deptno in(
select deptno
from dept
where loc='dallas');

select *
from emp
where (sal,ifnull(comm,'No')) in(
select sal,ifnull(comm,'No')
from emp
where deptno in(
select deptno
from dept
where loc='dallas')
);

#11
select ename,hiredate,sal
from emp
where (sal,ifnull(comm,'No'))in(
select sal,ifnull(comm,'No')
from emp
where ename='scott')
and ename !='scott';

#12
select sal
from emp
where job='clerk';

select ename,hiredate,sal
from emp
where sal >all(
select sal
from emp
where job='clerk'
)
order by sal desc;
