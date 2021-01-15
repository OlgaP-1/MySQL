/*Практическое задание по теме “Транзакции, переменные, представления”*/

/* 1. В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.*/
START TRANSACTION;
SELECT id, name, birthday_at FROM shop.users WHERE id = 1;
INSERT INTO sample.user SELECT id, name, birthday_at FROM shop.users WHERE id = 1;
COMMIT;
SELECT * FROM sample.user;

