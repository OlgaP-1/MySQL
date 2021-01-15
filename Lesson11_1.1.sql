/* Практическое задание по теме “Оптимизация запросов”
1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.*/ 
CREATE TABLE `logs` (
`str_id` INT NOT NULL, 
`created_at` DATETIME NOT NULL DEFAULT NOW(), 
`name_tbl` VARCHAR(50) NOT NULL, 
`comment_tbl` VARCHAR(250) NOT NULL) 
COMMENT = 'Внесение данных в базу' ENGINE=ARCHIVE;

--*********************************************
DROP TRIGGER IF EXISTS `shop`.`users_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER = CURRENT_USER TRIGGER `shop`.`users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW
BEGIN
INSERT INTO `logs` (`str_id`, `created_at`, `name_tbl`, `comment_tbl`)
VALUES (NEW.id, NOW(), "`users`", NEW.name);
END$$
DELIMITER ;

--**********************************************
DROP TRIGGER IF EXISTS `shop`.`catalogs_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER = CURRENT_USER TRIGGER `shop`.`catalogs_AFTER_INSERT` AFTER INSERT ON `catalogs` FOR EACH ROW
BEGIN
INSERT INTO `logs` (`str_id`, `created_at`, `name_tbl`, `comment_tbl`)
VALUES (NEW.id, NOW(), "`catalogs`", NEW.name);
END$$
DELIMITER ;

--*************************************************
DROP TRIGGER IF EXISTS `shop`.`products_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER = CURRENT_USER TRIGGER `shop`.`products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW
BEGIN
INSERT INTO `logs` (`str_id`, `created_at`, `name_tbl`, `comment_tbl`)
VALUES (NEW.id, NOW(), "`products`", concat_ws(NEW.name, NEW.description));
END$$
DELIMITER ;



