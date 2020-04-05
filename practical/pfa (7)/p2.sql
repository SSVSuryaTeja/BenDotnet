create proc prcAgentAll 
@FirstName varchar(40),
@LastName varchar(40),
@MI varchar(2),
@FullName varchar(40),
@Gender varchar(10),@SSN varchar(20),
@Dob DateTime,@Mstat int,
@Address1 varchar(15),@Address2
varchar(15),@City varchar(15),@State varchar(15),@ZipCode
varchar(15),@Country varchar(20),
@AgentID int output,@opt int=0
 as
if(@opt=2)
begin
Insert into Agent(FirstName,MI,LastName,FullName,Gender,
SSN,DOB,MaritalStatus,Address1,Address2,
City,State,ZipCode,Country)
values(@FirstName,@mi,@lastname,@fullname,
@gender,@ssn,@DOB,@Mstat,@address1,
@address2,@city,@state,@zipcode,@Country)
select @AgentId=SCOPE_IDENTITY()
end
if(@opt=4)
begin
Update Agent set
FirstName=isnull(@FirstName,FirstName),MI=isnull(@mi,MI),
LastName=isnull(@lastname,LastName),
Gender=isnull(@gender,Gender),
SSN=isnull(@ssn,SSN),
Address1=isnull(@address1,Address1),
Address2=isnull(@address1,Address2),
City=isnull(@city,City),
State=isnull(@state,State),
ZipCode=isnull(@zipcode,ZipCode)
where AgentId=@AgentId
end
if(@opt=8)
begin
print @agentid
delete from Agent where AgentId=@AgentId
end
if(@opt=12)
begin
select *
from Agent
where AgentId=@AgentId
end

 