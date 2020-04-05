IF EXISTS(SELECT * FROM SYSOBJECTS WHERE Name='PrcEmpOutNewExec') 
DROP PROC PrcEmpOutNewExec
GO

Create Proc PrcEmpOutNewExec
					@empno INT
AS
BEGIN
	declare @ret INT,@name varchar(30),@desig varchar(30),@dept varchar(30),
			@basic INT
	EXEC @ret=PrcEmpOutNew @empno,@name OUTPUT,@Dept OUTPUT,@desig OUTPUT,
					@basic OUTPUT
	if @ret=0
	BEGIN
		Print 'Name is ' +@name 
		Print 'Department is ' +@dept 
		Print 'Designation is ' +@desig 
		Print 'Salary is  ' +convert(varchar(30),@basic)
	END
	ELSE 
	BEGIN
	PRINT 'Record Not Found...'
	END
END
Go

EXEC PrcEmpOutNewExec 2
