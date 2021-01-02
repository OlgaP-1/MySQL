/*(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.*/

select flights.id, (select cities.name from `lesson 7`.cities where cities.label = flights.from) as `from`, 
(select cities.name from `lesson 7`.cities where cities.label = flights.to) as `to`
FROM `lesson 7`.flights;
