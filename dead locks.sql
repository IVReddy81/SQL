exec sp_who2


select * from sys.dm_tran_locks

select * from sys.dm_os_waiting_tasks

select * from sys.dm_exec_requests

dbcc traceon(1204,-1)