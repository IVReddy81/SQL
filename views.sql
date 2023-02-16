--view: a view is a virtual table based on the result-set of an SQL statement.
create view v1  --to create a view: create view viewname as sql_statement 
as
select id,name from t1 --where condition
go

select * from v1;

alter VIEW v1  --to modify the view: alter view viewname as sql_statement, it will work only when v1 view exists
as
select * from t1 where name1='ba'
go

drop view v1 --to drop the view: drop view viewname

