/* Практическое задание по теме “Транзакции, переменные, представления”*/ 
/* 4. (по желанию) Пусть имеется любая таблица с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.*/
--смотрим, что будем удалять
SELECT * FROM shop.products
WHERE created_at NOT IN (
	SELECT created_at
	FROM (
		SELECT created_at
		FROM shop.products
		ORDER BY created_at DESC
		LIMIT 5
	) AS for_del
) ORDER BY created_at DESC;

-- удаляем
DELETE FROM shop.products
WHERE created_at NOT IN (
	SELECT created_at
	FROM (
		SELECT created_at
		FROM shop.products
		ORDER BY created_at DESC
		LIMIT 5
	) AS for_del
) ORDER BY created_at DESC;

