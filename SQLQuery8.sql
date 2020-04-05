SET NOCOUNT ON

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='PrcEmpDeleteNew')
DROP PROC PrcEmpDeleteNew 
GO

Create Proc PrcEmpDeleteNew
						@empno INT
AS
BEGIN
	IF EXISTS(SELECT * FROM EMP Where Empno=@empno)
	BEGIN
		DELETE FROM EMP WHERE EMPNO=@empno 
		PRINT 'Record Deleted...'
	END
	ELSE 
	BEGIN
		PRINT 'Record Not Found...'
	END
END
GO

EXEC PrcEmpDeleteNew 882
GO