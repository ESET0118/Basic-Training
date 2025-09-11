use Students

select * from users
select * from books
select * from orders

select  u.name,b.title,b.price,ROW_NUMBER() over ( partition by o.user_id order by price desc ) as popularity from users u left join orders o on u.user_id=o.user_id inner join books b on o.product_id=b.product_id where popularity<=2
select u.user_id,u.name,sum(b.price) as total from orders o left join books b on o.product_id=b.product_id inner join users u on o.user_id=u.user_id group by u.user_id,u.name