create table t2 
(id int not null unique,
name varchar(10) unique )

select * from t2

alter table t2 add primary key(id1) --id1 primary key
alter table t2 add constraint pk primary key(col1,col2) --primary key=col1+col2
alter table t2 drop constraint pk --to get pk for single column alter table t2 drop column id ,PK__t2__3213E83F3A4574FB

alter table t3 add foreign key(id4) references t2(id)
alter table t3 add constraint fk foreign key(id4) references t2(id)
alter table t3 drop constraint fk

alter table t2 alter column id1 varchar(10) not null --to add not null constraint
alter table t2 alter column id1 varchar(10) null --to drop not null constraint

alter table t2 add default 5 for id
alter table t2 drop constraint DF__t2__id__797309D9
alter table t2 add constraint df default 5 for id, default 'ab' for name
alter table t2 drop constraint df

alter table t2 add check(id>4)
alter table t2 add constraint ck check(id>4 and id1>10)
alter table t2 drop constraint ck

alter table t2 add unique(id)
alter table t2 drop column id1  --u will get UQ__t2__3213E83E4879CEF5
alter table t2 drop constraint UQ__t2__3213E83E4879CEF5 -- to drop single column constraint
alter table t2 add constraint uk unique(name,id1)
alter table t2 drop constraint uk
