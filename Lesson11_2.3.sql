/* Практическое задание по теме “NoSQL”
Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB. */
> mongo
> use products
> db.products.insert({name: 'Intel Core i5-7400', description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.', price: 12700.00, catalog_id: 1})
> db.products.insertMany([{"name": "'Intel Core i3-8100'", "description": "'Процессор для настольных персональных компьютеров, основанных на платформе Intel.'", "price": 7890.00, "catalog_id": 1}, {"name": "'AMD FX-8320E'", "description": "'Процессор для настольных персональных компьютеров, основанных на платформе AMD.'", "price": 4780.00, "catalog_id": 1}, {"name": "'AMD FX-8320'", "description": "'Процессор для настольных персональных компьютеров, основанных на платформе AMD.'", "price": 7120.00, "catalog_id": 1}, {"name": "'ASUS ROG MAXIMUS X HERO'", "description": "'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX'", "price": 19310.00, "catalog_id": 2}, { "name": "'Gigabyte H310M S2H'", "description": "'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX'", "price": 4790.00, "catalog_id": 2}]);

> db.products.find().pretty()
{
	"_id" : ObjectId("60006d13dd2bc34b1f193430"),
	"name" : "Intel Core i5-7400",
	"description" : "Процессор для настольных персональных компьютеров, основанных на платформе Intel.",
	"price" : 12700,
	"catalog_id" : 1
}
{
	"_id" : ObjectId("600159f55fe2454b67eb7364"),
	"name" : "'Intel Core i3-8100'",
	"description" : "'Процессор для настольных персональных компьютеров, основанных на платформе Intel.'",
	"price" : 7890,
	"catalog_id" : 1
}
{
	"_id" : ObjectId("60015a1c5fe2454b67eb7365"),
	"name" : "'AMD FX-8320E'",
	"description" : "'Процессор для настольных персональных компьютеров, основанных на платформе AMD.'",
	"price" : 4780,
	"catalog_id" : 1
}
{
	"_id" : ObjectId("60015a635fe2454b67eb7366"),
	"name" : "'AMD FX-8320'",
	"description" : "'Процессор для настольных персональных компьютеров, основанных на платформе AMD.'",
	"price" : 7120,
	"catalog_id" : 1
}
{
	"_id" : ObjectId("60015ab25fe2454b67eb7367"),
	"name" : "'ASUS ROG MAXIMUS X HERO'",
	"description" : "'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX'",
	"price" : 19310,
	"catalog_id" : 2
}
{
	"_id" : ObjectId("60015ab25fe2454b67eb7368"),
	"name" : "'Gigabyte H310M S2H'",
	"description" : "'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX'",
	"price" : 4790,
	"catalog_id" : 2
}
{
	"_id" : ObjectId("60015ace5fe2454b67eb7369"),
	"name" : "'ASUS ROG MAXIMUS X HERO'",
	"description" : "'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX'",
	"price" : 19310,
	"catalog_id" : 2
}
{
	"_id" : ObjectId("60015ace5fe2454b67eb736a"),
	"name" : "'Gigabyte H310M S2H'",
	"description" : "'Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX'",
	"price" : 4790,
	"catalog_id" : 2
}

> use catalogs
switched to db catalogs
> db.catalogs.insertMany([{"name": "'Процессоры'"}, {"name": "'Материнские платы'"}, {"name": "'Видеокарты'"}, {"name": "'Жесткие диски'"}, {"name": "'Оперативная память'"}])
{
	"acknowledged" : true,
	"insertedIds" : [
		ObjectId("60015d4b5fe2454b67eb736b"),
		ObjectId("60015d4b5fe2454b67eb736c"),
		ObjectId("60015d4b5fe2454b67eb736d"),
		ObjectId("60015d4b5fe2454b67eb736e"),
		ObjectId("60015d4b5fe2454b67eb736f")
	]
}
> db.catalogs.find().pretty()
{ "_id" : ObjectId("60015d4b5fe2454b67eb736b"), "name" : "'Процессоры'" }
{
	"_id" : ObjectId("60015d4b5fe2454b67eb736c"),
	"name" : "'Материнские платы'"
}
{ "_id" : ObjectId("60015d4b5fe2454b67eb736d"), "name" : "'Видеокарты'" }
{ "_id" : ObjectId("60015d4b5fe2454b67eb736e"), "name" : "'Жесткие диски'" }
{
	"_id" : ObjectId("60015d4b5fe2454b67eb736f"),
	"name" : "'Оперативная память'"
}

