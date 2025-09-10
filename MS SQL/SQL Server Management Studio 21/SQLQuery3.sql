use Students



insert into orders values (106,7,70)

select * from users 
select * from books
select * from orders

select * from users u full outer join orders o on u.user_id=o.user_id full outer join books b on b.product_id=o.product_id

select * from orders o left join books b on o.product_id=b.product_id

select b.title,u.name,b.price from orders o left join books b on o.product_id=b.product_id  inner join users u on u.user_id=o.user_id where b.title in ('How to read a book' , 'how to quit smoking', 'bhagwad gita')

select * from orders o left join books b  on o.product_id=b.product_id

select * from books order by price desc
select * from books order by price desc offset 2 rows fetch next 5 rows only

select * from orders
select * from users
select o.user_id,u.name, count(*) as number_of_books from orders o left join users u on o.user_id=u.user_id group by o.user_id,u.name having count(*)>1