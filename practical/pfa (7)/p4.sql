SET NOCOUNT ON
Create Proc PrcEmpDelete
				@Empno INT
AS
BEGIN
	DELETE From Emp WHERE Empno=@Empno 
END				
GO

exec PrcEmpDelete 542

