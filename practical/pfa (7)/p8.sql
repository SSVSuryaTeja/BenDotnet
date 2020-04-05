create proc prcEmployCount
AS
BEGIN
	declare @rowcount INT
	select @rowcount=COUNT(*) from Emp
	print 'Total No.of Rows ' +convert(varchar(10),
		@rowcount)
END
GO

exec prcEmployCount
GO
