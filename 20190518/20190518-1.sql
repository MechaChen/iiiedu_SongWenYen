use dd101;

create table department 
(
id numeric(7) not null,
name varchar(24) not null
);

show tables;

select * 
from dept;

insert into department(id,name)
select deptno,dname
from dept;

select * from department;

create table employee
(
id numeric(7),
last_name varchar(24),
first_name varchar(24),
dept_id numeric(7)
);

alter table employee
modify id numeric(7) not null;

alter table employee
modify last_name varchar(40) not null;

desc employee;

create table employee2
as
select empno id,ename last_name,deptno dept_id
from emp;

desc employee2;


drop table employee;

alter table employee2
rename to employee;

select * from employee;

alter table employee
add salary numeric(7);

alter table employee
drop last_name;

desc employee;
use dd101;

alter table employee
add primary key(id);

alter table employee
drop primary key ;

alter table employee
add foreign key(dept_id) references department(id);

desc department;

alter table department
add primary key(id);

desc employee;

alter table department
modify id int;

use dd101;

alter table employee
drop foreign key employee_ibfk_1;