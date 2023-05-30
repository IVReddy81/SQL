--1. add filegroup 
use hyuuu
alter database hyuuu add filegroup secondary --alter database [DBname] add filegroup [filegroupname]
--2. add file to filegroup and attach to DB in using DB
use hyuuu
alter database hyuuu add file (name='hello', filename='C:\Program Files\Microsoft SQL Server\MSSQL16.IV\MSSQL\DATA\hello.ndf',SIZE = 8192KB , FILEGROWTH = 65536KB) 
to filegroup secondary
--3. setting up created DB as default DB
use hyuuu
alter database hyuuu modify filegroup [secondary] default --alter database [DBname] modify filegroup [filegroupname] default

/* removing files and filegroups*/
--1.set another filegroup as primary filegroup for DB
use hyuuu
alter database hyuuu modify filegroup [primary] default 
--2.remove files from filegroup
use hyuuu
alter database hyuuu remove file hello  --alter database [DBname] remove file [filename]
--3.remove filegroup 
use hyuuu
alter database hyuuu remove filegroup secondary --alter database [Dbname] remove filegroup [filegroupname]
