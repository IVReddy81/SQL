USE [master]
GO
ALTER DATABASE [AWS] SET  MULTI_USER WITH NO_WAIT
GO


use master
alter database AWS set single_user