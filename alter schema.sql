select * from INFORMATION_SCHEMA.TABLES

alter schema dbo Transfer SalesLt.Product  --to change SCHEMA of a table [ALTER SCHEMA newschemaname TRANSFER oldschemaname.tablename] 

declare @a nvarchar(max)=''
SELECT @a=@a+'ALTER SCHEMA dbo TRANSFER ' + TABLE_SCHEMA + '.' + TABLE_NAME + ';'
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_SCHEMA = 'SalesLT'
exec(@a)  




