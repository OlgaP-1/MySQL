/*представление показывает ФИО и возраст покупателей, заказавших 30 самых популярных товаров, по лайкам посетителей. */

USE `shop_cosmetics`;
DROP procedure IF EXISTS `product_recomendation`;

DELIMITER $$
USE `shop_cosmetics`$$
CREATE PROCEDURE `product_recomendation` (IN user_id INT)
BEGIN
	SELECT 
		product_id
	FROM
		shop_cosmetics.rewiews
	WHERE
		profiles_users_id = (SELECT 
				users.id
			FROM
				shop_cosmetics.users
			WHERE
				users.id = user_id) 
	UNION SELECT 
		product_id
	FROM
		likes
	WHERE
		users_id = user_id
	ORDER BY RAND()
	LIMIT 3;
END$$

DELIMITER ;

*******************************
/*добавила данные пользователя в каждую строку*/
SELECT product_id,
       (SELECT users.id FROM shop_cosmetics.users where users.id = 14) as usersid,
       (SELECT concat(users.firstname, ' ', users.lastname) as name FROM shop_cosmetics.users where users.id = 14) as name,
       (SELECT users.phone FROM shop_cosmetics.users where users.id = 14) as phon
       
FROM shop_cosmetics.rewiews 
JOIN shop_cosmetics.users ON users.id = 14
where profiles_users_id =
(SELECT users.id FROM shop_cosmetics.users
WHERE users.id = 14)

UNION
SELECT product_id,
		(SELECT users.id FROM shop_cosmetics.users where users.id = 14) as usersid,
       (SELECT concat(users.firstname, ' ', users.lastname) as name FROM shop_cosmetics.users where users.id = 14) as name,
       (SELECT users.phone FROM shop_cosmetics.users where users.id = 14) as phon
FROM likes WHERE users_id = 14;

