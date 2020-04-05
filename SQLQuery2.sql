IF EXISTS(select * from sysobjects where name='prcSayHello') 
Drop proc prcSayHello 
GO
Create Proc PrcSayHello
AS
BEGIN
	Print 'Welcome to Stored Procedures'
END
GO

-- To execute the stored procedure 

Exec PrcSayHello 
Go

-- To display the content of the stored procedure 

SP_HELPTEXT PrcSayHello 