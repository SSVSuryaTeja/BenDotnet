create proc prcCalc
				@a INT,
				@b INT
AS
BEGIN
	declare @c INT 
	select @c=@a+@b 
	print 'Sum is ' +convert(varchar(10),@c) 
END				
GO

exec prcCalc 12,5 

Create proc PrcEmpSearch
				@Empno INT
AS
BEGIN
	declare @name varchar(30),
			@dept varchar(30),
			@desig varchar(30),
			@basic INT 
	if exists(select * from Emp where Empno=@Empno) 
	BEGIN
		select @name=nam,@dept=dept,
		@desig=desig,@basic=basic 
			from Emp WHERE Empno=@Empno 
		Print 'Name is ' +@Name 
		print 'Department is ' +@Dept 
		print 'Designation is ' +@Desig 
		print 'Salary ' +convert(varchar(10),@basic)
	END			
	ELSE 
	BEGIN
		Print 'Record Not Found...'
	END
END				

exec PrcEmpSearch 2455