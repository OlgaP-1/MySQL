/* Практическое задание по теме “Хранимые процедуры и функции, триггеры" */
/* В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба bполя были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию. */
CREATE DEFINER=`root`@`localhost` TRIGGER `products_BEFORE_INSERT` BEFORE INSERT ON `products` FOR EACH ROW BEGIN
	IF (ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'name and description - IS NULL !!!';
	END IF;     
END


