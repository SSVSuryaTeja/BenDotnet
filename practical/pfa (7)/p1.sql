create proc prcOut1
				@empcount INT OUT
AS
BEGIN
	select @empcount=COUNT(*) from Emp 
END
GO

create Proc PrcOut2 
AS
BEGIN
	declare @empcount INT 
	exec prcOut1 @empcount OUT 
	PRINT @empcount 
END

exec PrcOut2 