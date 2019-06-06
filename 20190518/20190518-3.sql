use dd101;

CREATE TABLE T1
( PK   SMALLINT NOT NULL PRIMARY KEY
) ENGINE = INNODB;

CREATE TABLE T2
( FK   SMALLINT,
  C2   CHAR(2),
  FOREIGN KEY(FK) REFERENCES T1(PK) ON DELETE CASCADE 
) ENGINE = INNODB;
INSERT INTO T1 VALUES(1),(2),(3);
INSERT INTO T2 VALUES(1,'A1'),(2,'A2'),(2,'A3'),(3,'A3');

select *
from t1;

select *
from t2;


delete from t1
where pk=3;



drop table t1;

drop table t2;

CREATE TABLE T1
( PK   SMALLINT NOT NULL PRIMARY KEY
) ENGINE = INNODB;

CREATE TABLE T2
( FK   SMALLINT,
  C2   CHAR(2),
  FOREIGN KEY(FK) REFERENCES T1(PK) ON delete set null 
) ENGINE = INNODB;
INSERT INTO T1 VALUES(1),(2),(3);
INSERT INTO T2 VALUES(1,'A1'),(2,'A2'),(2,'A3'),(3,'A3');

select *
from t1;

select *
from t2;

delete from t1
where pk=1;