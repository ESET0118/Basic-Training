create database SmartMeter
use SmartMeter

create table Customers (CustomerID int primary key , Name varchar(50) , Address varchar(50),region varchar(10)) --Task 0

create table SmartMeterReadings (MeterID int primary key , CustomerId int , Location varchar(50) , InstalledDate DATE, ReadingDateTime Datetime, EnergyConsumed float)

INSERT INTO Customers (CustomerID, Name, Address, Region)
VALUES
(1, 'Ravi Kumar', '12 MG Road, Bangalore', 'South'),
(2, 'Priya Sharma', '45 Park Street, Kolkata', 'East'),
(3, 'Arjun Patel', '78 Nehru Nagar, Ahmedabad', 'West'),
(4, 'Meera Iyer', '23 Anna Salai, Chennai', 'South');

-- Insert into SmartMeterReadings
INSERT INTO SmartMeterReadings (MeterID, CustomerId, Location, InstalledDate, ReadingDateTime, EnergyConsumed)
VALUES
(101, 1, 'Bangalore', '2023-01-10', '2023-09-01 08:30:00', 15.7),
(102, 2, 'Kolkata', '2023-02-15', '2023-09-01 09:00:00', 22.4),
(103, 3, 'Ahmedabad', '2023-03-20', '2023-09-01 10:15:00', 18.9),
(104, 4, 'Chennai', '2023-04-25', '2023-09-01 11:45:00', 20.3);


select * from Customers
select * from SmartMeterReadings

select * from SmartMeterReadings where EnergyConsumed between 10 and 50 --Task 1
select * from SmartMeterReadings where ReadingDateTime between '2023-01-01' and '2023-12-31' 
select * from SmartMeterReadings where InstalledDate > '2023-01-01'

select avg(EnergyConsumed) as Average from SmartMeterReadings --Task 2
select max(EnergyConsumed) as Maximum from SmartMeterReadings
select * from SmartMeterReadings where  year(ReadingDateTime)=year(getdate())



