/* Практическое задание по теме “Транзакции, переменные, представления”*/ 
/* Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.*/
CREATE VIEW name_prod AS SELECT name, (SELECT catalogs.name FROM shop.catalogs WHERE catalogs.id = products.catalog_id) AS catalog FROM shop.products;

