create database society
use society

create table Apartments(flat_no int,names varchar(50),phone char(10))
select flat_no,names from Apartments
insert into Apartments (flat_no,names) values (505,'Prakritish'),(506,'Shreyansh')
insert into Apartments values (507,'Sowmya',7981994125)
update Apartments set phone=8942864787 where flat_no=506
delete from Apartments where names='Sowmya'
select * from Apartments
exec sp_help Apartments
exec sp_rename 'Apartments','Apt'
exec sp_rename 'Apt.phone','number'
select * from Apt
alter table Apt alter column number varchar(10)
alter table Apt drop column number 
alter table Apt add  number varchar(50)
select * from Apt


