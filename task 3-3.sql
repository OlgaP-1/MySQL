/*Практическое задание по теме “Хранимые процедуры и функции, триггеры"*/
/* (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55. */
--почему-то не работает.
CREATE DEFINER=`root`@`localhost` FUNCTION `new_function`(num INT) RETURNS int
    NO SQL
BEGIN
    DECLARE num_s INT;
    DECLARE num_x INT;
    DECLARE num_y INT;
    DECLARE i INT default i > num;
    
    SET i = 0;
    WHILE i < num DO
	SET i = i + 1;
	SET num_x = LAG(num_s, 2, 0) OVER(order by num_s);
        SET num_y = LAG(num_s, 1, 0) OVER(order by num_s);
        SET num_s = num_x + num_y;
	END WHILE;
RETURN num_s;
END
 
--*****************************
--тоже не работает

CREATE DEFINER=`root`@`localhost` FUNCTION `new_function`(num INT) RETURNS int
    READS SQL DATA
BEGIN
    DECLARE num_s INT;
    DECLARE num_x INT;
    DECLARE num_y INT;
    DECLARE i INT default i > num;
    SET num_s = 1;
    SET num_x = 0;
    SET num_y = 1;
    SET i = 0;
    WHILE i < num DO
	SET i = i + 1;
	SET num_s = num_s + 1;
        SET num_x = next(num_x);
        SET num_y = num_x + next(num_y);
    END WHILE;
RETURN num_y;
END
