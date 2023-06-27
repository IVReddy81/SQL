exec sp_who2

select * from sys.dm_tran_locks s inner join sys.databases d on s.resource_database_id=d.database_id where d.name='db'

select * from sys.dm_exec_requests

set lock_timeout -1 --to set timeout time

select @@LOCK_TIMEOUT  --to see how much time query need to run before timeout