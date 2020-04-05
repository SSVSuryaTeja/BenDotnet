create table TempAgent
(
    EntityId int Identity(1,1),
    FirstName varchar(40),
    SSN varchar(40)
)


select * from TempAgent

Create Table AgentC
(
  AgentID int identity(1,1) primary key,
  FirstName varchar(15),SSN varchar(50)
)


CREATE TABLE Error
(ErrorID int identity(1,1),
EntityID int,
ErrorMsg varchar(250),
ColumnName varchar(250)
)

select * from Error

truncate table Error
truncate table AgentC

create Proc PrcAgentCheck 
as
   Insert into Error(EntityId,ErrorMsg,ColumnName)
   select EntityID,'First Name is not Correct',
	'FirstName' from TempAgent where 
    firstname IS NULL or 
LEN(firstname)> 50 or 
firstname  LIKE '%[^a-zA-Z]%' 

   Insert into Error(EntityId,ErrorMsg,ColumnName)
   select EntityID,'SSN is Not Proper Format','SSN'
        from TempAgent where
	ssn is null or ssn  
	NOT LIKE 
'[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]' 

  Insert into AgentC(FirstName,SSN) 
   select FirstName,SSN from TempAgent 
   where EntityID <> all(Select EntityID from Error)

PrcAgentCheck

select * from AgentC

select * from Error