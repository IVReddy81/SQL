create table t1 (  --create table t1
id int identity(1,1),
name varchar(10) primary key,
name1 varchar(10))

insert into t1 values ('iv','iv1'),('ivv','iv1')  --inserting data

select name1 into t2 from t1 --create table t2 from t1.name1

alter table t2 add id int --adding id column to t2 [add colname datatype]

alter table t2 drop column id --deleteing column id from t2 [drop column colname]

sp_rename 't1.name1','n1' --rename t2.name1 column to n1 ['table.oldcol','newcol']
sp_rename 't3','t2' --rename table name ['oldtablename','newtablename']

alter table t2 alter column id varchar(2) --to modify datatype [alter col colname new DT]

select * from t2



