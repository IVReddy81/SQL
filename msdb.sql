use msdb
select * from sysjobs

select * from sysjobactivity

select * from syssessions

select * from sysalerts

select * from sysmail_account

exec sp_addmessage 500001,16,'hello'  -- to create user defind error messages

raiserror(500001,16,1) --to see error messages

select * from sys.messages where language_id='1033'