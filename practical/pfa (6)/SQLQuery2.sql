select * from Emp 
Go

create proc prcEmpOutShow
											@empno INT, 
											@nam varchar(30) OUTPUT, 
											@dept varchar(30) OUTPUT, 
											@desig varchar(30) OUTPUT, 
											@basic INT OUTPUT 
AS
BEGIN 
	declare @ret INT
	IF EXISTS(select * from Emp Where Empno=@empno) 
	BEGIN 
		select @nam=nam,@dept=dept,@desig=desig,@basic=basic 
		from Emp WHERE Empno=@empno 
		set @ret=0
	END
	ELSE 
	BEGIN 
		set @ret=1
	END
	return @ret 	
END				
GO
							
Create Proc PrcEmpOutExec 
											@empno INT
AS
BEGIN 
		Declare @nam varchar(30),@dept varchar(30),@desig varchar(30),@basic INT,@ret INT 
		exec @ret=prcEmpOutShow @empno,@nam OUTPUT,@dept OUTPUT,@desig OUTPUT,
													@basic OUTPUT 
		if @ret=0 
		BEGIN 
			Print 'Name is ' +@nam 
			Print 'Department is ' +@dept 
			print 'Designation is ' +@desig 
			Print 'Basic is ' +convert(varchar(30),@basic) 
		END 
		ELSE 
		BEGIN 
			Print 'Record Not Found...' 
		END 
END																			

exec PrcEmpOutExec 34
