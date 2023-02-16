select CURRENT_TIMESTAMP --2023-02-16 09:52:20.500
select DATEADD(day,2,getdate()) --addys 2 days to currect date 2023-04-16 09:52:58.210
select DATEADD(month,2,getdate()) --addys 2 months to currect date 2023-04-16 09:52:58.210
select DATEADD(year,2,getdate()) --addys 2 years to currect date 2025-02-16 09:53:34.760
select datediff(MINUTE,getdate(),getdate()+60) --to get difference between two dates
select DATEFROMPARTS(2020,12,22) --2020-12-22 ,return in the form of date
select DATENAME(MONTH,getdate()) --returns particular part from date as string, Febraury
select DATEPART(MONTH,GETDATE()) --returns particular part from date as integer, 2
select day(getdate()) --16
select YEAR(getdate()) --2023
select MONTH(getdate()) --2
select GETUTCDATE() --2023-02-16 04:32:14.657 time in utc format
select GETDATE() --2023-02-16 10:02:30.077
select SYSDATETIME() --2023-02-16 10:05:21.3276937
select SYSDATETIMEOFFSET() --2023-02-16 10:05:40.8442514 +05:30
select datediff(hh,getutcdate(),getdate()) --6hours
select isdate(2023-02-16) --1 if not date it will be 0
select cast(getdate() as time) --Converts a value (of any type) into a specified datatype
select coalesce(null,null,4,null,5)  --4, Returns the first non-null value in a list
select convert(varchar(max),getdate()) --Feb 16 2023 10:10AM, Converts a value (of any type) into a specified datatype
select CURRENT_USER --dbo, Returns the name of the current user in the SQL Server database
select SESSION_USER --dbo, Returns the name of the current user in the SQL Server database
select USER_NAME() --dbo
select iif(10<20,10,20) --10, Returns a value if a condition is TRUE, or another value if a condition is FALSE
select isnull(null,10) --10, returns non null value from a/b
select isnumeric(1209999999999999999999999999999) --returns 1 if input is number else 0
select nullif(30,30) --null, Returns NULL if two expressions are equal, if not gives a



