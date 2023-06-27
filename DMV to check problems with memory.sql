dbcc traceon (1204,-1)  --to get lock info
dbcc traceon (1222,-1)

select * from sys.dm_os_schedulers where scheduler_id<255  --to get CPU info

select count(database_id) 'no.of pages',convert(varchar(20),COUNT(1)*8)+' KB' 'size of database pages in KB',
convert(varchar(20),count(1)*8/1024.0)+' MB' 'size of database pages in MB',database_id 
from sys.dm_os_buffer_descriptors group by database_id  --to see size of each database pages

select * from sys.sysperfinfo where object_name like 'MSSQL$KING:Buffer Manager%' order by counter_name
--Target pages should be constant over the time, if not there is issue with physical memory     
--Buffer cache hit ratio should be high, in sec
--Page life expectancy - how many seconds that page would be in cache