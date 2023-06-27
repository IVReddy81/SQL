USE [master]
RESTORE DATABASE AWS FROM  DISK = 'C:\DBA\AdventureWorks2014.bak' WITH  FILE = 1,  
MOVE 'AdventureWorks2014_Data' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\DATA\AdventureWorks2014_Data.mdf',  
MOVE 'AdventureWorks2014_Log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\DATA\AdventureWorks2014_Log.ldf',  
NOUNLOAD,  STATS = 5

GO

--when DB is showing as restore use 
restore database AWS with recovery

--to take offline the DB
use master
alter database AWS4 set offline

--to take online the DB
use master
alter database AWS4 set online




