create function fnSum(@a INT,@b INT) RETURNS INT
AS
BEGIN
		declare @c INT 
		Set @c=@a+@b 
		return @c 
END
GO

select dbo.fnSum(12,5) 
GO

select dbo.fnSum(66,24) 
GO

Create Function fnTax(@basic INT) RETURNS INT 
AS
BEGIN
		return @basic*0.03 
END 
GO

select Empno,nam,basic,dbo.fnTax(basic) 'tax'
from Emp
GO

select Empno,nam,basic,dbo.fnTax(basic) 'tax',
			basic-dbo.fnTax(basic) 'Take Home'
from Emp
GO







