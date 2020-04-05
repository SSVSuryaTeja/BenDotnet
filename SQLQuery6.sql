IF EXISTS(SELECT * FROM SYSOBJECTS WHERE NAME='prcEmpInsertNew')
DROP PROC prcEmpInsertNew
GO

Create Proc prcEmpInsertNew
					@nam varchar(30),
					@dept varchar(30),
					@desig varchar(30),
					@basic INT
AS
BEGIN
	Declare @empno INT 
	SELECT @empno=CASE WHEN MAX(EMPNO) IS NULL THEN 1 ELSE 
		MAX(EMPNO)+1 END FROM EMP 
	INSERT INTO EMP VALUES(@empno,@nam,@dept,@desig,@basic)
	Print 'Record Inserted...'
END
GO

EXEC prcEmpInsertNew 'Teja','MSBI','Developer',88623 
GO

select * from Emp 
GO
