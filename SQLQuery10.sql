IF EXISTS(SELECT * FROM SYSOBJECTS WHERE Name='PrcEmpOutNew') 
DROP PROC PrcEmpOutNew
GO

Create Proc PrcEmpOutNew
						@empno INT,
						@name varchar(30) OUTPUT,
						@dept varchar(30) OUTPUT,
						@desig varchar(30) OUTPUT,
						@basic INT OUTPUT
AS
BEGIN
	IF EXISTS(SELECT * FROM EMP WHERE Empno=@empno) 
	BEGIN
		SELECT @Name=Nam,
			   @dept=dept,
			   @desig=Desig,
			   @basic=Basic
		FROM EMP WHERE EMPno=@empno
		RETURN 0
	END
	ELSE 
	BEGIN
		RETURN 1
	END
END
GO

