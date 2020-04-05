create proc PrcEmpUpdate
				@Empno INT,
				@Name varchar(30)=null,
				@Dept varchar(30)=null,
				@Desig varchar(30)=null,
				@basic INT=NULL
AS
BEGIN
	Update Emp set nam=ISNULL(@Name,Nam),
				   dept=ISNULL(@Dept,Dept),
				   desig=ISNULL(@Desig,Desig),
				   basic=ISNULL(@Basic,Basic) 
			WHERE Empno=@Empno
END				

Exec PrcEmpUpdate -584,null,'Oracle','Manager',49999
Exec PrcEmpUpdate -584,null,null,null,48999 

select * from Emp 