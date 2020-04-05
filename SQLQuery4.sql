IF EXISTS(SELECT * FROM sysobjects where name='PrcSum') 
Drop proc PrcSum 
Go
create proc prcSum
				@a int=6,
				@b INT=7
AS
BEGIN
	Declare @c INT
	set @c=@a+@b 
	PRINT 'Sum is  ' +convert(varchar(10),@c)
END
GO
-- To execute Stored Procedure

Exec prcSum 
GO

-- To execute Stored Procedure with args 

Exec prcSum 66,28 
GO