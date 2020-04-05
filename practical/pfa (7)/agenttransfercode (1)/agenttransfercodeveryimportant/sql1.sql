select * from Agent

select @@rowcount

declare @nam varchar(20)
set @nam='Nikhil'
print 'Name is  ' +@nam

declare @a int 
set @a=12
print 'A value is ' +Convert(varchar(20),@a)

declare @a int,@b int, @c int
set @a=5
set @b=6
set @c=@a+@b
print 'Sum is  ' +convert(char(10),@c)

select * from emp

declare @sal int
select @sal=max(basic) from emp
if @sal >= 30000
 print 'Good Salary'
else
 print 'Increment Required...'


create proc prcAgentShow 
as
  select * from Agent

exec prcAgentShow

prcAgentShow


-- Create a stored procedure to display max. salary

create proc prcEmpMaxSal 
as
   declare @sal int 
   select @sal=max(basic) from emp
   print 'Maximum Salary  ' +convert(varchar(20),@sal)

exec prcEmpMaxSal

sp_helptext prcEmpMaxSal

create proc PrcExecAll
as
   exec prcAgentShow
   exec prcEmpMaxSal

PrcExecAll


select * from emp

create proc prcAgentDisps @AgentId int
as
   declare @Fname varchar(20),@Lname varchar(20),@city
   varchar(20),@SSN varchar(20)
   select @Fname=FirstName,@Lname=LastName,@City=City,
   @SSN=SSN from Agent where AgentID=@AgentID
   print 'First Name ' +@Fname
   print 'Last Name  ' +@Lname
   print 'City  ' +@City
   print 'SSN  ' +@ssn

prcAgentDisps 111

alter proc prcAgentDisps @AgentId int
as
   declare @Fname varchar(20),@Lname varchar(20),@city
   varchar(20),@SSN varchar(20)
   if exists(select * from Agent where AgentID=@AgentID)
   begin
   select @Fname=FirstName,@Lname=LastName,@City=City,
   @SSN=SSN from Agent where AgentID=@AgentID
   print 'First Name ' +@Fname
   print 'Last Name  ' +@Lname
   print 'City  ' +@City
   print 'SSN  ' +@ssn
   end
   else
    print 'Record Not Found...'


create proc PrcEmpSrch @nam varchar(15)=null
as
    if @nam is null
    begin
      print 'usage is : PrcEmpSrch name'
      return
    end
    declare @dept varchar(15),@bas int 
    if exists(select * from emp where nam=@nam)
    begin
      select @dept=Dept,@bas=basic from Emp where
          Nam=@nam
      print 'Department  ' +@dept
      print 'Basic   ' +convert(varchar(20),@bas)
    end

PrcEmpSrch 'lalitha'

create proc prcAgentOut @AgentId int,@FirstName 
varchar(20) output,@LastName varchar(20) output,
@City varchar(20) output,@SSN varchar(10) output
as
   if exists(select * from Agent where Agentid=@AgentID)
   begin
      select @FirstName=FirstName,@LastName=LastName,
              @City=City,@SSN=SSN from Agent where 
         AgentID=@AgentID
      return 0
   end
   else
      return 1


Create Proc PrgAgentOutDisp @AgentID int
as
   declare @FirstName varchar(20),@LastName varchar(20),
     @City varchar(20),@SSN varchar(20),@ret int 
   exec @ret=prcAgentOut @AgentID,@FirstName output,
	@LastName output,@City output,@SSN output
   if (@ret=0)
   begin
     print 'First Name ' +@FirstName
     print 'Last Name ' + @LastName
     print 'City ' +@city
     print 'SSN  ' +@SSN
   end
   else
     print 'Record Not Found...!'

PrgAgentOutDisp 3

