create table Employees (id int,names varchar(50),dept varchar(50),salary float)
insert into Employees values (1,'sarath','HR',200000),(2,'akash','IT',100000),(3,'abhishek','HR',250000),(4,'Kunal','Marketing',400000),(5,'Sowmya','IT',100000)
update Employees  set salary=1.4*salary where names='Sowmya'
delete from Employees where salary=(select max(salary) from Employees where dept='HR')
exec sp_rename 'Employees','Friends'
alter table Friends add Address varchar(250)
alter table Friends alter column salary varchar(50)
alter table Friends add  number int
update Friends set Address='Sunshine Sapling' ,number='99999999' where names='akash'
alter table Friends drop column Address
exec sp_rename 'Friends.number' ,'mobile'
select * from Friends
exec sp_help Friends