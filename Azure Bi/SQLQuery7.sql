-- Aggregate Functions 

select * from Emp;

select sum(basic) from Emp; 

select avg(basic) from Emp;

select max(basic) from Emp;

select min(basic) from Emp;

select count(*) from Emp;

-- Group By : Used to generate summary report on the field specified. 

select * from Emp;

select Dept,Sum(basic) From Emp
Group by Dept;

select Dept, Count(*) From Emp 
Group By Dept
having count(*) > 1;

select Dept, Max(basic) From Emp 
Group By Dept Having Max(Basic) > 90000;

