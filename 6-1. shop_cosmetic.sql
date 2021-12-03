/*выводит ФИО и возраст покупателей, заказавших 30 самых популярных товаров, по лайкам посетителей. */
SELECT 
    product.id, product.decode, product.price,
    (SELECT COUNT(likes.product_id) as c_pro FROM shop_cosmetics.likes WHERE likes.product_id = product.id GROUP BY likes.product_id) AS c_likes, 
    orders.product_id,
    orders.users_id, 
    CONCAT(users.firstname, ' ', users.lastname) AS name_us,
    timestampdiff(year, profiles.birthday, NOW()) AS us_year
FROM
    shop_cosmetics.product 
    JOIN shop_cosmetics.orders ON orders.product_id = product.id 
    JOIN shop_cosmetics.users ON orders.users_id = users.id
    JOIN shop_cosmetics.profiles ON orders.users_id = profiles.users_id
    order by c_likes desc limit 30;
