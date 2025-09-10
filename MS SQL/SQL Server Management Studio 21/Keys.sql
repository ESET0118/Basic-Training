create database Students
use Students

create table users(user_id int primary key,email varchar(50) unique,name varchar(50))
create table books(product_id int primary key,title varchar(50),price int)

insert into users values(4,'jaynerd@pathan.com','jay')
insert into books values(10,'Ramayan',1500)

create table orders(order_no int primary key,user_id int,product_id int,foreign key (user_id) references users(user_id),foreign key (product_id) references books(product_id))

insert into orders values(103,1,40)

select * from users
select * from books
select * from orders

