use master
--to create login
create login [IV\sqltest] from windows with default_database = master

--to drop login
drop login [IV\sqltest]

--add server role
alter server role sysadmin add member [IV\sqltest]
--syntax: alter server role [role we want to give] add/drop member [login name]

--to remove server role to user
alter server role sysadmin drop member [IV\sqltest]

--to create own server role
create server role myserver

--to drop server role
drop server role myserver

USE [AWS]  --adding user to AWS DB
--create DB users
--syntax: create user [user_name] for login [login_name] with default_schema=[schema_name]
CREATE USER [sqltest] FOR LOGIN [IV\sqltest] WITH DEFAULT_SCHEMA=[Sales]

--giving read permission to user
--syntax: alter role [rolename] add/drop member [user_name]
ALTER ROLE [db_datareader] add MEMBER [sqltest]

--creating own DB roles
create role mine

--giving select/insert/update/delete permission to DB role mine on single table
grant select on [Person].[Password] to mine

--adding own DB role to user
alter role mine add member sqltest

