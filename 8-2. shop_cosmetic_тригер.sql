DROP TRIGGER IF EXISTS `shop_cosmetics`.`orders_AFTER_UPDATE`;

DELIMITER $$
USE `shop_cosmetics`$$
CREATE DEFINER = CURRENT_USER TRIGGER `shop_cosmetics`.`orders_AFTER_UPDATE` AFTER UPDATE ON `orders` FOR EACH ROW
BEGIN
	
END$$
DELIMITER ;
DROP TRIGGER IF EXISTS `shop_cosmetics`.`orders_AFTER_INSERT`;

DELIMITER $$
USE `shop_cosmetics`$$
CREATE DEFINER = CURRENT_USER TRIGGER `shop_cosmetics`.`orders_AFTER_INSERT` AFTER INSERT ON `orders` FOR EACH ROW
BEGIN
INSERT INTO shop_cosmetics.orders (`total`) VALUES (COUNT(orders.product_id)*product.price) as total;
END$$
DELIMITER ;
