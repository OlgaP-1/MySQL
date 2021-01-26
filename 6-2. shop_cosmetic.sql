/*выводит минимальную цену товаров, максимальную цену товаров, среднюю цену товаров, количество товаров, средний возраст зарегистрированных покупателей */
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
            shop_cosmetics.profiles) AS avg_age
FROM
    shop_cosmetics.product;
