select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS  --toknow constaraints
select * from INFORMATION_SCHEMA.COLUMNS  --to know all the columns
select * from INFORMATION_SCHEMA.VIEWS  --to know views

--Index: Indexes are used to retrieve data from the database more quickly than otherwise.
--clustered index: allows duplicates in the column
create clustered index id1 --create clustered index idxname on tblname(colname1,colname2,....)
on t2(id1) --or on t2(name,id1)

--unique index: doesn't allow duplicates in the column
create unique index ud1
on t2(id1)

--non clustered index: we can create as many as NCI, but clustered should be only one per table
create nonclustered index nd1
on t2(name,id1)

drop index t2.id1  --to drop index: drop index tbl.colname
drop index t2.nd1
drop index t2.ud1
