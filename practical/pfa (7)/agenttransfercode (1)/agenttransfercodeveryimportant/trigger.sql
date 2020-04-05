select user

select * from Student

truncate table Student
insert into Student(Sno,Nam,Sub1,Sub2,Sub3)
values(1,'vivek',56,66,77)

insert into Student(Sno,Nam,Sub1,Sub2,Sub3)
values(2,'Hardik',68,67,67)

alter Trigger TrgStudIns on Student for Insert
as
    declare @sno int
    select @sno=SNO from inserted
    update Student set total=sub1+Sub2+sub3,
     aveg=(sub1+sub2+sub3)/3,insertedon=getdate(),
    insertedby=user_name() where sno=@SNO

