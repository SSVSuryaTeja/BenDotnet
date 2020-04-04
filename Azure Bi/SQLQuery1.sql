use sqlpractice
go

-- Display list of tables avaiable in current database 

SELECT * FROM INFORMATION_SCHEMA.TABLES
GO

-- Display structure about Agent Table 

SP_HELP Agent 

select * from Agent 

select AgentId,FirstName,LastName,City,SSN,MaritalStatus 
FROM Agent 

select 
	AgentID,
	FirstName,
	LastName,
	City,
	SSN,
	MaritalStatus,
	CASE MaritalStatus
		WHEN 0 THEN 'Unmarried' 
		WHEN 1 THEN 'Married'
	END 'status'
FROM AGENT 
GO

select * from Agent 

SELECT 
	AgentID,
	FirstName,
	LastName,
	City,
	State,
	Country,
	ROW_NUMBER() OVER(Order By Country) 'Rno'
FROM Agent

SELECT 
	AgentID,
	FirstName,
	LastName,
	City,
	State,
	Country,
	Rank() OVER(Order By Country) 'Rno'
FROM Agent


SELECT 
	AgentID,
	FirstName,
	LastName,
	City,
	State,
	Country,
	DENSE_RANK() OVER(Order By Country) 'Rno'
FROM Agent
