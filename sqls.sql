use master

select * from emp

select * from emp where dept='asp'


select nam,basic from emp

select * from emp where basic > 20000

select empno 'Employ No',nam 'Name of Employ' from emp

select * from emp where basic between 23000 and 30000

select * from emp where basic not between 23000 and 30000

select * from emp where dept in('asp','csh')

select * from emp where dept not in('asp','csh')

select * from emp

select * from emp where nam like 'p%'

select * from emp where nam like 'p__a%'

select * from emp order by nam desc

select * from emp order by basic desc 

select top 3 * from emp order by basic desc

select dept from emp 

select distinct dept from emp

select 'Ascii value is  '=  ascii('R')

select char(80)

select left('navneeth',4)

select right('navneeth',5)

select len('prasanna')

select reverse('prasanna')


select substring('prasanna',2,3)

-- starting with 2nd char and 3 stands for no.of chars to 
--display

select getdate() 

select datepart(dd,getdate())

select datepart(mm,getdate())

select datepart(yy,getdate())

select datepart(dw,getdate()) 

select datepart(wk,getdate()) 

select datepart(dy,getdate())

select datepart(qq,getdate())

select datename(dw,getdate())

select datename(mm,getdate())

select dateadd(mm,3,getdate())

select getdate()
select substring(convert(char(15),getdate()),1,12)

select dateadd(mm,-3,getdate())

select dateadd(dd,4,'03-sep-2008')

select dateadd(dd,2,getdate())

select datediff(yy,'03-sep-1980',getdate())

select datediff(mm,'03-sep-1980',getdate())

select datediff(dd,'03-sep-1980',getdate())

select datediff(ss,'03-sep-1980',getdate())

select month(getdate())

select year(getdate())

select day(getdate())

select abs(-12)

select floor(12.676)

select power(5,3)

select sqrt(49)

select sqrt(12)

-- round example

select round(12.788,2)

select round(1234.567,2)

select round(1234.567,1)

select round(1234.567,0)

select round(1234.567,-1)

select round(1234.567,-2)

select round(1234.567,-3)

select round(1234.567,-4)

select * from emp

select sum(basic) from emp

select avg(basic) from emp

select count(*) from emp

select max(basic) from emp

select min(basic) from emp

select * from emp

select dept,sum(basic) from emp group by dept having
max(basic) >=20000

select * from emp 

select * from emp order by dept

select * from emp order by dept compute sum(basic) 

select * from emp order by dept compute sum(basic)
by dept 

select * from emp order by dept compute sum(basic)
by dept compute sum(basic)

create table emps
(
   empno int,nam varchar(16),basic float
)

sp_help emp

sp_rename emps,test

sp_help test

create table student
(
   sno int,nam varchar(15),sub1 int,sub2 int,sub3 int,
    tot int,aveg float
)

insert test values(1,'sandeep',19433)

insert test values(2,'manoj',12033)

insert student(sno,nam,sub1,sub2,sub3)
values(2,'navneeth',75,57,85)

select * from student

update student set tot=sub1+sub2+sub3,
aveg=(sub1+sub2+sub3)/3

update student set sub1=70 where nam='murali'

delete from student where nam='praveen'

delete from student

-- next session is on monday 9 pm IST
