select * from Emp 
GO

create proc prcEmpShowDef 
									@nam varchar(30)='Kiran' 
AS
BEGIN 
		declare @dept varchar(30),@desig varchar(30),@basic INT 
		select @dept=dept,@desig=desig,@basic=basic 
		from Emp Where nam=@nam
		Print 'Department ' +@dept 
		Print 'Designation ' +@desig 
		Print 'Salary ' +convert(varchar(10),@basic) 
END									
GO

exec prcEmpShowDef 'satish' 
GO

