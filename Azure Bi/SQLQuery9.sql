select max(basic) from Emp;

-- Display the name of the person who is getting max salary 

select nam from Emp where basic=
(select max(basic) from Emp)

select max(basic) from Emp where basic < (select max(basic) from Emp) 

--> Display Idle Agents 

SELECT * From Agent WHERE AgentID <> ALL(select AgentID from AgentPolicy)

--> Display Idle Policies

SELECT * FROM Policy WHERE PolicyID <> ALL(Select PolicyID From AgentPolicy) 
GO

