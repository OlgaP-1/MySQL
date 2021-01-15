/* Практическое задание по теме “NoSQL”
В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.*/

sudo apt install redis-server
redis-server
redis-cli

127.0.0.1:6379> SADD IP_adress 127.0.0.1 128.0.0.54 127.0.0.63 
(integer) 3
127.0.0.1:6379> SMEMBERS IP_adress
1) "127.0.0.63"
2) "127.0.0.1"
3) "128.0.0.54"
127.0.0.1:6379> SCARD IP_adress
(integer) 3

