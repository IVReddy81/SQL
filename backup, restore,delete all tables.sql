select * from INFORMATION_SCHEMA.TABLES

backup database new1
to disk='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\new1.bak'

restore database new1
from disk='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\new1.bak'

declare @a nvarchar(max)=''  --todelete all tables
select @a=@a+'select * from '+table_schema+'.'+table_name+';' from INFORMATION_SCHEMA.TABLES 
exec(@a)