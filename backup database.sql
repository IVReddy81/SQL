--full backup
BACKUP DATABASE [AWS] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\Backup\AWS.bak' WITH NOFORMAT, 
NOINIT,  NAME = N'AWS-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
backup database AWS to disk='C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\Backup\AWS2.bak' with stats=1

--differntial backup
BACKUP DATABASE [AWS] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\Backup\AWS.bak' WITH  DIFFERENTIAL , 
NOFORMAT, NOINIT,  NAME = N'AWS-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

backup database AWS to disk='C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\Backup\AWS2.bak'
with differential, stats=4

--if we have different filegroups for DB we can use to backup single filegroup
backup database AWS filegroup='filegroupname' to disk ='C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\Backup\AWS.bak' with stats=10