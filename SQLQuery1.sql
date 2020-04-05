use sqlpractice

declare @n int
set @n=6
print 'N value is ' +convert(varchar(30),@n)

declare @name varchar(30)
set @name='SuryaTeja'
print 'Name is  ' +@name 

declare @cnt int
select @cnt=count(*) from Emp 
print 'Total Records of Emp table ' +convert(varchar(10),@cnt)

declare @maxsal int
select @maxsal=max(basic) from Emp 
print 'Max Salaray is  ' +convert(varchar(10),@maxsal) 
