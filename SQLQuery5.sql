IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='prcEmpSearchNew')
DROP PROC prcEmpSearchNew 
GO

Create Proc prcEmpSearchNew
					@empno INT 
AS
BEGIN
	DECLARE @nam varchar(30),
			@dept varchar(30),
			@desig varchar(30),
			@basic INT
	IF EXISTS(SELECT * FROM EMP Where Empno=@empno) 
	BEGIN
		SELECT 
			@Nam=nam,
			@dept=Dept,
			@desig=Desig,
			@basic=basic
		FROM EMP Where Empno=@empno
		Print 'Name is ' +@nam 
		Print 'Department is ' +@dept 
		Print 'Designation is ' +@desig 
		Print 'Salary is ' +convert(varchar(10),@basic)
	END
	ELSE 
	BEGIN
		PRINT 'Record Not Found...'
	END
END
GO

EXEC prcEmpSearchNew 2 
GO