create database union_table

use union_table


create table table1(id int primary key,name varchar(50))
create table table2(id int primary key,name varchar(50))

insert into table2 values(3,'Shreyansh')

select * from table1
select * from table2

select * from table1 union all select * from table2

select lower(name)  as LowerCase from table1
select upper(name)  as UpperCase from table1

select len(name) as length from table1

select substring(name,2,2) as substr from table1

select reverse(name) as rev from table1

select replace(name,'Sahil','Sanober') as rep from table1

select concat(id,' ',name) as concatenation from table1

select 'hello '+name as concatenation from table1

select cast(id as varchar(50))+' '+name from table1

select getdate() as todayDate

select convert(varchar(50),getdate(),103) as dd_mm_yyyy

