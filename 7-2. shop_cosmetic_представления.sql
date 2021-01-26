/*представление показывает id и название категории товара, id продукта товара, его артикул, цена, бренд и колличество лайков к данным товарам */

USE `shop_cosmetics`;
CREATE  OR REPLACE VIEW `section_tb1` AS
SELECT 
    *,
    (SELECT 
            product.decode
        FROM
            shop_cosmetics.product
        WHERE
            section.product_id = product.id) prod_cod,
    (SELECT 
            product.price
        FROM
            shop_cosmetics.product
        WHERE
            section.product_id = product.id) price,
    (SELECT 
            brand
        FROM
            shop_cosmetics.brand
        WHERE
            section.product_id = brand.product_id) brand,
    CASE
        WHEN
            (SELECT 
                    COUNT(likes.product_id)
                FROM
                    shop_cosmetics.likes
                GROUP BY likes.product_id
                HAVING likes.product_id = section.product_id) IS NOT NULL
        THEN
            (SELECT 
                    COUNT(likes.product_id)
                FROM
                    shop_cosmetics.likes
                GROUP BY likes.product_id
                HAVING likes.product_id = section.product_id)
        ELSE 0
    END AS c_liks
FROM
    shop_cosmetics.section;
