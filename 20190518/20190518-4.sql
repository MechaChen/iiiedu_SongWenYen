use dd101_2;

#smith same department

select deptno
from emp
where ename='smith';

select  * 
from emp
where deptno=20;

select  * 
from emp
where deptno=(
select deptno
from emp
where ename='smith'
);

#smith jones

select deptno
from emp
where ename='smith' or ename='jones';

/*
select  * 
from emp
where deptno=(20,20
);
*/
select  * 
from emp
where deptno in(
select deptno
from emp
where ename='smith' or ename='jones'
);


#smith the same job,deptno

select job,deptno
from emp
where ename='smith' ;

select *
from emp
where job=(select job from emp where ename='smith')
and deptno=(select deptno from emp where ename='smith');


select *
from emp
where (job,deptno) =(
select job,deptno
from emp
where ename='smith'
);

select *
from emp
where (job,deptno) in(
select job,deptno
from emp
where ename='smith' or ename='jones'
);

# Dallas

select * from dept;

select deptno
from dept
where loc='dallas';

select *
from emp
where deptno in(
select deptno
from dept
where loc='dallas');

select *
from emp e,dept d
where e.deptno=d.deptno and d.loc='dallas';

#avg sal

select *
from emp
where sal>avg(sal);

select avg(sal)
from emp;

select *
from emp
where sal>(
select avg(sal)
from emp
);

# any all
select sal
from emp
where job='clerk';

select *
from emp
where sal > all (select sal
from emp
where job='clerk');

select *
from emp
where sal >any(select sal
from emp
where job='clerk');


select *
from emp
where sal < all (select sal
from emp
where job='clerk');

select *
from emp
where sal <any(select sal
from emp
where job='clerk');