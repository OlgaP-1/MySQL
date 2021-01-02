/* Тема “Сложные запросы”*/
/* Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.*/

select 
if((select count(*) from shop.orders where user_id = users.id group by orders.user_id) > 0, users.id, '') as users_orders,
if((select count(*) from shop.orders where user_id = users.id group by orders.user_id) > 0, users.name, '') as names_orders 
FROM shop.users;
