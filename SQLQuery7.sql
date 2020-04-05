SET NOCOUNT ON

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='prcEmpUpdateNew')
DROP PROC prcEmpUpdateNew
GO

Create Proc prcEmpUpdateNew
					@empno INT,
					@nam varchar(30),
					@dept varchar(30),
					@desig varchar(30),
					@basic INT
AS
BEGIN
	IF EXISTS(SELECT * FROM EMP Where Empno=@empno)
	BEGIN
		UPDATE EMP SET Nam=ISNULL(@nam,Nam),
					   Dept=ISNULL(@dept,Dept),
					   Desig=ISNULL(@desig,Desig),
					   Basic=ISNULL(@basic,Basic)
		WHERE Empno=@empno 
	END
	ELSE 
	BEGIN
		PRINT 'Record Not Found...'
	END
END
GO
-- Execute the Stored Procedure 

EXEC prcEmpUpdateNew 902453,NULL,'Azure BI',null,99999
GO
