create proc prcAgentInsert
				
				@FirstName varchar(30),
				@Mi varchar(1),
				@LastName varchar(30),
				@Gender varchar(10),
				@DOB DateTime,
				@SSN varchar(30),
				@MaritalStatus INT,
				@Address1 varchar(30),
				@Address2 varchar(30),
				@City varchar(30), 
				@State varchar(15),
				@Zipcode varchar(30),
				@Country varchar(30),
				@AgentID INT OUTPUT
AS
BEGIN
	
	Insert into Agent(FirstName,MI,LastName,
	Gender,DOB,SSN,MaritalStatus,Address1,Address2,
	City,State,ZipCode,Country) 
	values(@FirstName,@MI,@LastName,@Gender,@DOB,@SSN,
	@MaritalStatus,@Address1,@Address2,@City,@State,@Zipcode,
	@Country) 
	select @AgentID=SCOPE_IDENTITY() 
END				
GO

declare @agentid INT
exec prcAgentInsert  'Raja','v','Vamsi','Female',
'1/1/1998','123-45-2344',1,'8th avenue',
'sterling heights','detroit','MI','848555','USA',@agentid OUTPUT 
PRINT @agentID
