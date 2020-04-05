create proc prcEmpInsert
					@Empno INT,
					@Name varchar(30),
					@Dept varchar(30),
					@Desig varchar(30),
					@Basic INT
AS
BEGIN
	Insert into Emp values(@Empno,@Name,@Dept,
				@Desig,@Basic) 
END					
GO

exec prcEmpInsert -584,'Raja','Sql','Developer',48233

