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