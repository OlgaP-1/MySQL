/*выводит минимальную цену товаров, максимальную цену товаров, среднюю цену товаров, количество товаров всего, средний возраст зарегистрированных покупателей, общая сумма заказов, которые были сделаны покупателями больше двух раз */
    SELECT 
    MIN(price),
    MAX(price),
    ROUND(AVG(price), 2) AS avg_price,
    COUNT(*) AS total,
    (SELECT 
            ROUND(AVG(TIMESTAMPDIFF(YEAR,
                            profiles.birthday,
                            NOW())),
                        2) AS avg_age
        FROM
            shop_cosmetics.profiles) AS avg_age,
    (SELECT 
            SUM(C)
        FROM
            (SELECT 
                COUNT(orders.users_id) AS c
            FROM
                shop_cosmetics.orders
            GROUP BY orders.users_id
            HAVING C >= 2) AS C) AS sum_ord_more_2
FROM
    shop_cosmetics.product;