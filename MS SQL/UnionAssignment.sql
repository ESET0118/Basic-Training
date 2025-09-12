


select * from Students2024
select * from Students2025
select * from Employees
select * from Projects
select * from contacts

--Task 1 and 2

select * from Students2024 union select * from Students2025
select * from Students2024 union all select * from Students2025


--Display employee names in UPPERCASE and LOWERCASE.

select upper(name) as UpperCase from Employees
select lower(name) as LowerCase from Employees

--Find the length of each employee’s name.

select len(name) as Length from Employees

--Show only the first 3 letters of each name.

select substring(name,0,3) as SubStr from Employees

--Replace Finance department with Accounts.

select replace(Department,'finance','accounts') as ReplaceDepartment from Employees

--Create a new column showing "Name - Department" using CONCAT.

select concat(name,'-',Department) as Concatenation from Employees


--Show today’s date using GETDATE().

select cast(getdate() as date)

--Find the duration (in days) of each project using DATEDIFF.

select DATEDIFF(day,StartDate,EndDate) as duration from Projects

--Add 10 days to each project’s EndDate using DATEADD.

select DATEADD(day,10,enddate) as ten from Projects

--Find how many days are left until each project ends. (Hint: Use DATEDIFF with GETDATE())

select datediff(day,enddate,getdate()) as leftDays from Projects

--Convert today’s date into DD/MM/YYYY format using CONVERT.

select convert(varchar(50), getdate(), 103) as todayDate;

--Convert a float 123.456 into an integer using CAST.

select cast(123.456 as int) as ConvertedInt

--For employees (from Employees table above), categorize them:

--If Dept = IT → show Tech Team



--If Dept = HR → show Human Resources



--Else → Other