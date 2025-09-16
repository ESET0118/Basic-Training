drop trigger changes_in_table

create trigger changes_in_table
on Employees
for insert,update
as 
begin
print 'changes have been made'
end

select * from Employees
insert into Employees values (12,'Sowmya','IT',55000)

update Employees set Salary=50000 where id=12
