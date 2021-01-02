/*Выведите список товаров products и разделов catalogs, который соответствует товару.*/
SELECT id, name, (SELECT catalogs.name FROM shop.catalogs WHERE catalogs.id = products.catalog_id) AS catalog FROM shop.products;
