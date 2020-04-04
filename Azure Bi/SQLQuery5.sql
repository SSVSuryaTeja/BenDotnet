-- Date Functions 

SELECT GETDATE() 

-- Datepart() : Display's the specific portion of given date 


select datepart(dd,getdate())
select datepart(mm,getdate())
select datepart(yy,getdate())
select datepart(dw,getdate())
select datepart(wk,getdate())
select datepart(dd,getdate())
select datepart(qq,getdate())
select datepart(hh,getdate())
select datepart(mi,getdate())
select datepart(ss,getdate())

-- dateName() : Display date info

select DATENAME(dw,getdate())

select DATEADD(dd,3,getdate()) 

select DATEADD(mm,3,getdate())

select DATEADD(yy,3,getdate()) 

select DATEADD(yy,-3,getdate()) 


select DATEDIFF(dd,'09/03/1980',getdate())

select DATEDIFF(mm,'09/03/1980',getdate())

select DATEDIFF(yy,'09/03/1980',getdate())

select month(getdate())

select year(getdate())

select day(getdate())

-- Display the last day of the next month 

-- Display all friday's of the current month 

-- Add 3 years 5 months and 10 days to the given date 

-- Display your exact age : ex : 24 years 5 months and 10 days like that 
