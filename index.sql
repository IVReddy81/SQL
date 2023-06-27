
select * from sys.indexes  --to get info about indexes in DB

select * from sys.dm_db_index_physical_stats(DB_ID('DB name'),OBJECT_ID('[Schema name].[table name]'),null,null,null) s
inner join sys.indexes i
on s.object_id=i.object_id and s.index_id=i.index_id   -- to know index fragmentation percentage

--create cluster index
create clustered index CIX on [dbo].[hello](id asc)  --create clustered index [index name] on [table](column asc/desc)
--create non cluster index
create nonclustered index ncix on dbo.hello(id desc) 

--to drop index
drop index hello.ncix  --drop index tablename.indexname
drop index [NonClusteredIndex-20230428-121713] on hello --drop index indexname on tablename

--fragmentation - as no.of data adding or removing from tables, index also effected hence it leaves balnks in the pages casuing fragmentation
--to remove fragmentation use reorganize or rebuild
--reorganize index -only removes the empty blanks in the page (when frgamentation per between 5% and 29.99%)
alter index CIX on [dbo].[hello] reorganize  --alter index [indexname] on [tablename] reorganize

--rebuild index - rebuilds all the index from scratch (pages will create from scratch) (when fragmentation >30%)
alter index cix on hello rebuild with (online=on)

--fill factor - if 80 then data will move to next page when current page is at 80%
create unique clustered index ucix on hello(id desc) with (fillfactor=80)
--we can use fillfactor with rebuild also
alter index ucix on hello rebuild with (online=off,fillfactor=80)

--we cannot use fillfactor with reorganize

--to know about unused indexes (if user_sees=user_sacns=user_looksups=0 then that index is of no use, you can drop or disable the index)
select OBJECT_NAME(s.object_id) 'table',name 'index_name',* from sys.dm_db_index_usage_stats s join sys.indexes i on s.object_id=i.object_id and i.index_id=s.index_id

--disable index
alter index [PK_Password_BusinessEntityID] on [Person].[Password] disable
 
--to create statistics (used for query optimization)
create statistics snew on [Person].[Password]([PasswordHash]) --create statistics [sname] on schemaname.tablename(columnname)

