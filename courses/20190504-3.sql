use dd101;

show tables;

show databases;

select * from information_schema.tables
where table_schema='dd101';

create table phonebook
(
STDID int,
STDNAME varchar(10)
);

drop table phonebook;

select * from information_schema.tables
where table_schema='sys';

create table sys.phonebook
(
STDID int,
STDNAME varchar(10)
);

drop table sys.phonebook;


create table phonebook
(
STDID int,
STDNAME varchar(10)
);

desc phonebook;

select * from information_schema.columns
where table_schema='dd101' and table_name='phonebook';

alter table phonebook
add column (
addr varchar(10)
); 


alter table phonebook
add tel varchar(10); 

select * from phonebook;

desc phonebook;     

alter table phonebook
add birthday date;

insert into phonebook
values(1,'a','a','a');

alter table phonebook
modify tel int;

update phonebook 
set tel='123'
where stdid=1;


alter table phonebook
modify stdname varchar(20);

alter table phonebook
drop column tel;

desc phonebook;

alter table phonebook
rename to phonebook1;

alter table phonebook
change address addr varchar(20);