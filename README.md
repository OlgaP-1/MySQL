# MySQL
laguna@laguna-VirtualBox:~$ sudo apt update
[sudo] пароль для laguna: 
Сущ:1 http://ru.archive.ubuntu.com/ubuntu focal InRelease
Пол:2 http://ru.archive.ubuntu.com/ubuntu focal-updates InRelease [114 kB]
Пол:3 http://ru.archive.ubuntu.com/ubuntu focal-backports InRelease [101 kB]   
Пол:4 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 DEP-11 Metadata [236 kB]
Пол:5 http://security.ubuntu.com/ubuntu focal-security InRelease [109 kB]      
Пол:6 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 c-n-f Metadata [11,2 kB]
Пол:7 http://ru.archive.ubuntu.com/ubuntu focal-updates/universe amd64 DEP-11 Metadata [205 kB]
Пол:8 http://ru.archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 DEP-11 Metadata [2 468 B]
Пол:9 http://ru.archive.ubuntu.com/ubuntu focal-backports/universe amd64 DEP-11 Metadata [1 768 B]
Получено 780 kB за 1с (896 kB/s)                                           
Чтение списков пакетов… Готово
Построение дерева зависимостей       
Чтение информации о состоянии… Готово
Может быть обновлено 2 пакета. Запустите «apt list --upgradable» для их показа.
laguna@laguna-VirtualBox:~$ sudo apt install mysql-server
Чтение списков пакетов… Готово
Построение дерева зависимостей       
Чтение информации о состоянии… Готово
Следующий пакет устанавливался автоматически и больше не требуется:
  libfprint-2-tod1
Для его удаления используйте «sudo apt autoremove».
Будут установлены следующие дополнительные пакеты:
  libaio1 libcgi-fast-perl libcgi-pm-perl libevent-core-2.1-7
  libevent-pthreads-2.1-7 libfcgi-perl libhtml-template-perl libmecab2
  mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0
  mysql-client-core-8.0 mysql-server-8.0 mysql-server-core-8.0
Предлагаемые пакеты:
  libipc-sharedcache-perl mailx tinyca
Следующие НОВЫЕ пакеты будут установлены:
  libaio1 libcgi-fast-perl libcgi-pm-perl libevent-core-2.1-7
  libevent-pthreads-2.1-7 libfcgi-perl libhtml-template-perl libmecab2
  mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0
  mysql-client-core-8.0 mysql-server mysql-server-8.0 mysql-server-core-8.0
Обновлено 0 пакетов, установлено 16 новых пакетов, для удаления отмечено 0 пакетов, и 2 пакетов не обновлено.
Необходимо скачать 30,4 MB архивов.
После данной операции объём занятого дискового пространства возрастёт на 248 MB.
Хотите продолжить? [Д/н] y
Пол:1 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-client-core-8.0 amd64 8.0.22-0ubuntu0.20.04.3 [4 200 kB]
Пол:2 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-client-8.0 amd64 8.0.22-0ubuntu0.20.04.3 [22,0 kB]
Пол:3 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libaio1 amd64 0.3.112-5 [7 184 B]
Пол:4 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libevent-core-2.1-7 amd64 2.1.11-stable-1 [89,1 kB]
Пол:5 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libevent-pthreads-2.1-7 amd64 2.1.11-stable-1 [7 372 B]
Пол:6 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libmecab2 amd64 0.996-10build1 [233 kB]
Пол:7 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-server-core-8.0 amd64 8.0.22-0ubuntu0.20.04.3 [17,5 MB]
Пол:8 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-server-8.0 amd64 8.0.22-0ubuntu0.20.04.3 [1 261 kB]
Пол:9 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libcgi-pm-perl all 4.46-1 [186 kB]
Пол:10 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libfcgi-perl amd64 0.79-1 [33,1 kB]
Пол:11 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libcgi-fast-perl all 1:2.15-1 [10,5 kB]
Пол:12 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 libhtml-template-perl all 2.97-1 [59,0 kB]
Пол:13 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 mecab-utils amd64 0.996-10build1 [4 912 B]
Пол:14 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 mecab-ipadic all 2.7.0-20070801+main-2.1 [6 714 kB]
Пол:15 http://ru.archive.ubuntu.com/ubuntu focal/main amd64 mecab-ipadic-utf8 all 2.7.0-20070801+main-2.1 [4 380 B]
Пол:16 http://ru.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-server all 8.0.22-0ubuntu0.20.04.3 [9 548 B]
Получено 30,4 MB за 10с (3 148 kB/s)                                           
Предварительная настройка пакетов …
Выбор ранее не выбранного пакета mysql-client-core-8.0.
(Чтение базы данных … на данный момент установлено 191853 файла и каталога.)
Подготовка к распаковке …/00-mysql-client-core-8.0_8.0.22-0ubuntu0.20.04.3_amd64
.deb …
Распаковывается mysql-client-core-8.0 (8.0.22-0ubuntu0.20.04.3) …
Выбор ранее не выбранного пакета mysql-client-8.0.
Подготовка к распаковке …/01-mysql-client-8.0_8.0.22-0ubuntu0.20.04.3_amd64.deb 
…
Распаковывается mysql-client-8.0 (8.0.22-0ubuntu0.20.04.3) …
Выбор ранее не выбранного пакета libaio1:amd64.
Подготовка к распаковке …/02-libaio1_0.3.112-5_amd64.deb …
Распаковывается libaio1:amd64 (0.3.112-5) …
Выбор ранее не выбранного пакета libevent-core-2.1-7:amd64.
Подготовка к распаковке …/03-libevent-core-2.1-7_2.1.11-stable-1_amd64.deb …
Распаковывается libevent-core-2.1-7:amd64 (2.1.11-stable-1) …
Выбор ранее не выбранного пакета libevent-pthreads-2.1-7:amd64.
Подготовка к распаковке …/04-libevent-pthreads-2.1-7_2.1.11-stable-1_amd64.deb …
Распаковывается libevent-pthreads-2.1-7:amd64 (2.1.11-stable-1) …
Выбор ранее не выбранного пакета libmecab2:amd64.
Подготовка к распаковке …/05-libmecab2_0.996-10build1_amd64.deb …
Распаковывается libmecab2:amd64 (0.996-10build1) …
Выбор ранее не выбранного пакета mysql-server-core-8.0.
Подготовка к распаковке …/06-mysql-server-core-8.0_8.0.22-0ubuntu0.20.04.3_amd64
.deb …
Распаковывается mysql-server-core-8.0 (8.0.22-0ubuntu0.20.04.3) …
Выбор ранее не выбранного пакета mysql-server-8.0.
Подготовка к распаковке …/07-mysql-server-8.0_8.0.22-0ubuntu0.20.04.3_amd64.deb 
…
Распаковывается mysql-server-8.0 (8.0.22-0ubuntu0.20.04.3) …
Выбор ранее не выбранного пакета libcgi-pm-perl.
Подготовка к распаковке …/08-libcgi-pm-perl_4.46-1_all.deb …
Распаковывается libcgi-pm-perl (4.46-1) …
Выбор ранее не выбранного пакета libfcgi-perl.
Подготовка к распаковке …/09-libfcgi-perl_0.79-1_amd64.deb …
Распаковывается libfcgi-perl (0.79-1) …
Выбор ранее не выбранного пакета libcgi-fast-perl.
Подготовка к распаковке …/10-libcgi-fast-perl_1%3a2.15-1_all.deb …
Распаковывается libcgi-fast-perl (1:2.15-1) …
Выбор ранее не выбранного пакета libhtml-template-perl.
Подготовка к распаковке …/11-libhtml-template-perl_2.97-1_all.deb …
Распаковывается libhtml-template-perl (2.97-1) …
Выбор ранее не выбранного пакета mecab-utils.
Подготовка к распаковке …/12-mecab-utils_0.996-10build1_amd64.deb …
Распаковывается mecab-utils (0.996-10build1) …
Выбор ранее не выбранного пакета mecab-ipadic.
Подготовка к распаковке …/13-mecab-ipadic_2.7.0-20070801+main-2.1_all.deb …
Распаковывается mecab-ipadic (2.7.0-20070801+main-2.1) …
Выбор ранее не выбранного пакета mecab-ipadic-utf8.
Подготовка к распаковке …/14-mecab-ipadic-utf8_2.7.0-20070801+main-2.1_all.deb …
Распаковывается mecab-ipadic-utf8 (2.7.0-20070801+main-2.1) …
Выбор ранее не выбранного пакета mysql-server.
Подготовка к распаковке …/15-mysql-server_8.0.22-0ubuntu0.20.04.3_all.deb …
Распаковывается mysql-server (8.0.22-0ubuntu0.20.04.3) …
Настраивается пакет libmecab2:amd64 (0.996-10build1) …
Настраивается пакет mysql-client-core-8.0 (8.0.22-0ubuntu0.20.04.3) …
Настраивается пакет libcgi-pm-perl (4.46-1) …
Настраивается пакет libhtml-template-perl (2.97-1) …
Настраивается пакет mecab-utils (0.996-10build1) …
Настраивается пакет libevent-core-2.1-7:amd64 (2.1.11-stable-1) …
Настраивается пакет mysql-client-8.0 (8.0.22-0ubuntu0.20.04.3) …
Настраивается пакет libfcgi-perl (0.79-1) …
Настраивается пакет libaio1:amd64 (0.3.112-5) …
Настраивается пакет libevent-pthreads-2.1-7:amd64 (2.1.11-stable-1) …
Настраивается пакет mecab-ipadic (2.7.0-20070801+main-2.1) …
Compiling IPA dictionary for Mecab.  This takes long time...
reading /usr/share/mecab/dic/ipadic/unk.def ... 40
emitting double-array: 100% |###########################################| 
/usr/share/mecab/dic/ipadic/model.def is not found. skipped.
reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
emitting double-array: 100% |###########################################| 
reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
emitting matrix      : 100% |###########################################| 

done!
update-alternatives: используется /var/lib/mecab/dic/ipadic для предоставления /
var/lib/mecab/dic/debian (mecab-dictionary) в автоматическом режиме
Настраивается пакет libcgi-fast-perl (1:2.15-1) …
Настраивается пакет mysql-server-core-8.0 (8.0.22-0ubuntu0.20.04.3) …
Настраивается пакет mecab-ipadic-utf8 (2.7.0-20070801+main-2.1) …
Compiling IPA dictionary for Mecab.  This takes long time...
reading /usr/share/mecab/dic/ipadic/unk.def ... 40
emitting double-array: 100% |###########################################| 
/usr/share/mecab/dic/ipadic/model.def is not found. skipped.
reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
emitting double-array: 100% |###########################################| 
reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
emitting matrix      : 100% |###########################################| 

done!
update-alternatives: используется /var/lib/mecab/dic/ipadic-utf8 для предоставле
ния /var/lib/mecab/dic/debian (mecab-dictionary) в автоматическом режиме
Настраивается пакет mysql-server-8.0 (8.0.22-0ubuntu0.20.04.3) …
update-alternatives: используется /etc/mysql/mysql.cnf для предоставления /etc/m
ysql/my.cnf (my.cnf) в автоматическом режиме
Renaming removed key_buffer and myisam-recover options (if present)
mysqld will log errors to /var/log/mysql/error.log
mysqld is running as pid 2654
Created symlink /etc/systemd/system/multi-user.target.wants/mysql.service → /lib
/systemd/system/mysql.service.
Настраивается пакет mysql-server (8.0.22-0ubuntu0.20.04.3) …
Обрабатываются триггеры для systemd (245.4-4ubuntu3.3) …
Обрабатываются триггеры для man-db (2.9.1-1) …
Обрабатываются триггеры для libc-bin (2.31-0ubuntu9.1) …
laguna@laguna-VirtualBox:~$ sudo mysql_secure_installation

Securing the MySQL server deployment.

Connecting to MySQL using a blank password.

VALIDATE PASSWORD COMPONENT can be used to test passwords
and improve security. It checks the strength of password
and allows the users to set only those passwords which are
secure enough. Would you like to setup VALIDATE PASSWORD component?

Press y|Y for Yes, any other key for No: y

There are three levels of password validation policy:

LOW    Length >= 8
MEDIUM Length >= 8, numeric, mixed case, and special characters
STRONG Length >= 8, numeric, mixed case, special characters and dictionary                  file

Please enter 0 = LOW, 1 = MEDIUM and 2 = STRONG: 0
Please set the password for root here.

New password: 

Re-enter new password: 

Estimated strength of the password: 0 
Do you wish to continue with the password provided?(Press y|Y for Yes, any other key for No) : y
By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.

Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
Success.


Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) : y
Success.

By default, MySQL comes with a database named 'test' that
anyone can access. This is also intended only for testing,
and should be removed before moving into a production
environment.


Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
 - Dropping test database...
Success.

 - Removing privileges on test database...
Success.

Reloading the privilege tables will ensure that all changes
made so far will take effect immediately.

Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y
Success.

All done! 
laguna@laguna-VirtualBox:~$ ps aux | grep mysqld
mysql       2874  0.4 17.6 1741184 359564 ?      Ssl  15:54   0:02 /usr/sbin/mysqld
laguna@laguna-VirtualBox:~$ mysqld --initialize --laguna=mysql --datadir=/var/lib/mysql1
mysqld: Can't create directory '/var/lib/mysql1/' (OS errno 13 - Permission denied)
2020-12-04T14:05:14.167297Z 0 [System] [MY-013169] [Server] /usr/sbin/mysqld (mysqld 8.0.22-0ubuntu0.20.04.3) initializing of server in progress as process 4130
2020-12-04T14:05:14.168940Z 0 [ERROR] [MY-010187] [Server] Could not open file '/var/log/mysql/error.log' for error logging: Permission denied
2020-12-04T14:05:14.168967Z 0 [ERROR] [MY-013236] [Server] The designated data directory /var/lib/mysql1/ is unusable. You can remove all files that the server added to it.
2020-12-04T14:05:14.168977Z 0 [ERROR] [MY-010119] [Server] Aborting
2020-12-04T14:05:14.169056Z 0 [System] [MY-010910] [Server] /usr/sbin/mysqld: Shutdown complete (mysqld 8.0.22-0ubuntu0.20.04.3)  (Ubuntu).
laguna@laguna-VirtualBox:~$ cd /etc/mysql/mysql.conf.d
laguna@laguna-VirtualBox:/etc/mysql/mysql.conf.d$ ls -l
итого 8
-rw-r--r-- 1 root root  132 ноя  6  2019 mysql.cnf
-rw-r--r-- 1 root root 2220 ноя 26 14:03 mysqld.cnf
laguna@laguna-VirtualBox:/etc/mysql/mysql.conf.d$ cd
laguna@laguna-VirtualBox:~$ ps aux | grep mysqld
mysql       2874  0.3 17.6 1741184 359564 ?      Ssl  15:54   0:07 /usr/sbin/mysqld
laguna      4753  0.0  0.0   9064   728 pts/0    S+   16:32   0:00 grep --color=auto mysqld
laguna@laguna-VirtualBox:~$ mysql -uroot -p
Enter password: 
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
laguna@laguna-VirtualBox:~$ mysql -uroot -p
Enter password: 
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
laguna@laguna-VirtualBox:~$ mysql -uroot -p
Enter password: 
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
laguna@laguna-VirtualBox:~$ mysql -uroot -p
Enter password: 
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
laguna@laguna-VirtualBox:~$ mysql -uroot -p
Enter password: 
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
laguna@laguna-VirtualBox:~$ mysql -uroot -p
Enter password: 
ERROR 1698 (28000): Access denied for user 'root'@'localhost'
laguna@laguna-VirtualBox:~$ sudo mysql -uroot -p
[sudo] пароль для laguna: 
Попробуйте ещё раз.
[sudo] пароль для laguna: 
Попробуйте ещё раз.
[sudo] пароль для laguna: 
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.22-0ubuntu0.20.04.3 (Ubuntu)

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> CREATE DATABASE test1_04.12.2020;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '.12.2020' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> CREATE DATABASE test1_04122020;
Query OK, 1 row affected (0.02 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| test1_04122020     |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE tets1_04122020;
ERROR 1049 (42000): Unknown database 'tets1_04122020'
mysql> USE test1_04122020;
Database changed
mysql> CREATE TABLE test_table1 (id init, name varchar(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'init, name varchar(100))' at line 1
mysql> CREATE TABLE test_table1(id init, name varchar(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'init, name varchar(100))' at line 1
mysql> CREATE TABLE test_table1( id init, name varchar(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'init, name varchar(100))' at line 1
mysql> CREATE TABLE test_tbl1( id int, name varchar(100));
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW TABLES;
+--------------------------+
| Tables_in_test1_04122020 |
+--------------------------+
| test_tbl1                |
+--------------------------+
1 row in set (0.00 sec)

mysql> INSERT test_tbl1 VALUES (1, 'Ivan');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT test_tbl1 VALUES (1, 'Maria');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM test_tbl1;
+------+-------+
| id   | name  |
+------+-------+
|    1 | Ivan  |
|    1 | Maria |
+------+-------+
2 rows in set (0.00 sec)

mysql>
