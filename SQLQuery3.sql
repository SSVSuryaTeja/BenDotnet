IF EXISTS(SELECT * FROM sysobjects where name='PrcSum') 
Drop proc PrcSum 
Go
create proc prcSum
				@a int,
				@b INT
AS
BEGIN
	Declare @c INT
	set @c=@a+@b 
	PRINT 'Sum is  ' +convert(varchar(10),@c)
END
GO
-- To execute Stored Procedure


Exec prcSum 12,56 
GO