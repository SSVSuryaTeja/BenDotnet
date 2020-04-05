select * from Agent 
GO

Create proc PrcAgentOutEx
									@agentID INT,
									@FirstName varchar(30) OUTPUT,
									@LastName varchar(30) OUTPUT,
									@City varchar(30) OUTPUT,
									@State varchar(30) OUTPUT,
									@SSN varchar(30) OUTPUT 
AS
BEGIN
	declare @ret INT
	IF Exists(select * from Agent Where AgentID=@agentID) 
	BEGIN
		select @FirstName=FirstName,
					@LastName=LastName,
					@City=City, 
					@State=State,
					@SSN=SSN 
		from Agent Where AgentID=@agentID 
		SET @ret=0 
	END 
	ELSE 
	BEGIN 
		SET @ret=1
	END
	Return @ret 
END					
GO
				
Create Proc PrcAgentOutExec 				
													@agentID INT
AS
BEGIN
		Declare @firstName varchar(30),@lastName varchar(30),
						@city varchar(30),@state varchar(30),@ssn varchar(30),@ret INT 
		exec @ret=PrcAgentOutEx @agentID,@firstName OUTPUT,
											@lastName OUTPUT, @city OUTPUT, 
											@state OUTPUT, 
											@ssn OUTPUT 			
		if @ret=0 
		BEGIN 
			Print 'First Name ' +@firstName 
			Print 'Last Name ' +@lastName 
			Print 'City ' +@city 
			Print 'State ' +@state 
			Print 'SSN ' +@ssn 
		END							
		ELSE 
		BEGIN 
			Print 'Sorry...Record Not Found'
		END					
END													
GO

exec PrcAgentOutExec 5666

													