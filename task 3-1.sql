/* Практическое задание по теме “Хранимые процедуры и функции, триггеры"*/
/* Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи". */
CREATE DEFINER=`root`@`localhost` FUNCTION `hello`() RETURNS varchar(100) CHARSET utf8mb4
    NO SQL
BEGIN
	DECLARE time_now TIME;
    DECLARE hi varchar(100);
    SET time_now = TIME_FORMAT(now(), '%H:%i:%s');
    
    IF(time_now BETWEEN '00:00:01' AND '06:00:00') THEN SET hi = 'Good night';
    ELSEIF(time_now BETWEEN '06:00:01' AND '12:00:00') THEN SET hi = 'Good morning';
    ELSEIF(time_now BETWEEN '12:00:01' AND '18:00:00') THEN SET hi = 'Good afternun';
    ELSE SET hi = 'Good evening';
    END IF;
RETURN hi; 
END
