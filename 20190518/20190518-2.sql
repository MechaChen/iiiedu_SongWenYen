use information_schema;

show tables;

select * from TABLE_CONSTRAINTS
where constraint_schema='dd101' and table_name='employee';

create table dd101.test01
(
id int ,
constraint test01_pk primary key(id)
);

select * from TABLE_CONSTRAINTS
where constraint_schema='dd101' and table_name in('test01','test02','test03','test04');


create table dd101.test03
(
id int ,
unique(id)
);

alter table dd101.test02
drop index id;

create table dd101.test04
(
id int ,
constraint test04_id_uk unique(id)
);

alter table dd101.test04
drop index test04_id_uk;

#test04_id_uk
#uk_id

select * from TABLE_CONSTRAINTS
where constraint_schema='dd101' and table_name in('employee','department');

show tables;

use information_schema;

select *
from INNODB_FOREIGN f,INNODB_FOREIGN_COLS fc
where f.id=fc.id and for_name like '%employee%';