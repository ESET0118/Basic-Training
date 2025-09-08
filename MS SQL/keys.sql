create table employees1(id int primary key, name varchar(50),branch varchar(50),salary float)

insert into employees1 values (6,'Felix','EP',NULL)

select * from employees1 where name like 's%'

select * from employees1 where (
select avg(salary) from employees1
) between 200000 and 800000

select max(salary) as maximum from employees1

select count(*) from employees1 where salary=100000

select * from employees1 where salary is not null order by salary desc 