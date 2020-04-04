/* Types of Joins */ 

SELECT A.AgentID,FirstName,LastName,City,State,
P.PolicyID,AppNumber,ModalPremium,AnnualPremium
FROM Agent A INNER JOIN AgentPolicy AP 
ON A.AgentID=AP.AgentID
INNER JOIN Policy P ON 
P.PolicyID=AP.PolicyID
GO

-- Example for Left-Outer Join 

SELECT A.AgentID,FirstName,LastName,City,State,
P.PolicyID,AppNumber,ModalPremium,AnnualPremium
FROM Agent A LEFT JOIN AgentPolicy AP 
ON A.AgentID=AP.AgentID
LEFT JOIN Policy P ON 
P.PolicyID=AP.PolicyID
GO

-- Example for Right-Outer Join 

SELECT A.AgentID,FirstName,LastName,City,State,
P.PolicyID,AppNumber,ModalPremium,AnnualPremium
FROM Agent A RIGHT JOIN AgentPolicy AP 
ON A.AgentID=AP.AgentID
RIGHT JOIN Policy P ON 
P.PolicyID=AP.PolicyID
GO

-- Example for Full-Outer Join 

SELECT A.AgentID,FirstName,LastName,City,State,
P.PolicyID,AppNumber,ModalPremium,AnnualPremium
FROM Agent A FULL JOIN AgentPolicy AP 
ON A.AgentID=AP.AgentID
FULL JOIN Policy P ON 
P.PolicyID=AP.PolicyID
GO

SELECT * FROM Agent CROSS JOIN AgentPolicy
GO

-- SELF JOIN  

SELECT E1.Empno,E1.Nam,E2.Empno,E2.Nam
FROM EmpMgr E1 INNER JOIN EmpMgr E2 
ON E1.Empno=E2.MgrNo

select * from EmpMgr
