create function fac(@n int) returns int
as
begin
 declare @f int,@i int 
 set @f=1
 set @i=1
 while @i <= @n
 begin
   set @f=@f*@i
   set @i=@i+1
 end
 return @f
end

select dbo.fac(5)

select dbo.fac(6)

-- Function to calculate factorial 

alter function ncrs(@n int,@r int) returns int
as
begin
 declare @r1 int,@r2 int,@r3 int,@res int
 select @r1=dbo.fac(@n)
 select @r2=dbo.fac(@r)
 select @r3=dbo.fac(@n-@r)
 set @res=(@r1)/(@r3 * @r2)
 return @res
end

select dbo.ncrs(5,2)

select * from TempAgent

delete from error

select * from AgentC
select * from Error

truncate table error

delete from AgentC


alter function fnFirstNameValidate
(@FirstName varchar(15)) returns int
as
begin
  declare @ret int 
  if (@FirstName is null or len(@FirstName) > 50 
  or @FirstName like '%[^a-zA-Z]%')
	set @ret=0
  else  
   set @ret=1
  return @ret
end     


alter function fnSSNValidate(@SSN varchar(20))
returns int 
as
begin
   declare @ret int
   if @ssn NOT LIKE 
'[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'
   set @ret=0
   else
   set @ret=1
   return @ret
end  

create Proc PrcAgentTrf 
as
  Insert into Error(EntityId,ErrorMsg,ColumnName)
   select EntityID,'First Name is not Correct',
	'FirstName' from TempAgent where 
     dbo.fnFirstNameValidate(FirstName)=0


   Insert into Error(EntityId,ErrorMsg,ColumnName)
   select EntityID,'SSN is Not Proper Format','SSN'
        from TempAgent where dbo.fnSSNValidate(SSN)=0

    Insert into AgentC(FirstName,SSN) 
   select FirstName,SSN from TempAgent 
   where EntityID <> all(Select EntityID from Error)


prcAgentTrf

select * from AgentC

select * from Error