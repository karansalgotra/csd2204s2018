MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| csd2204s18         |
| dbss               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
7 rows in set (0.01 sec)

MariaDB [(none)]> use csd2204s18;
Database changed
MariaDB [csd2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'database' at line 1
MariaDB [csd2204s18]> select * from customer;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | NEW YORK   | 120134     |   20 |
| C04    | Donna Newman    | New      | Brazil     | 341020     |   25 |
| C05    | Daniel Jack     | Dj       | toronto    | 130120     |   50 |
| C06    | Eston m.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | NEW YORK   | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.06 sec)

MariaDB [csd2204s18]> select * from customer WHERE nickname RAGEXP '^A+';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'RAGEXP '^A+'' at line 1
MariaDB [csd2204s18]> select * from Customer WHERE nickname RAGEXP '^A+';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'RAGEXP '^A+'' at line 1
MariaDB [csd2204s18]> select * from Customer WHERE NAME RAGEXP '^A+';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'RAGEXP '^A+'' at line 1
MariaDB [csd2204s18]> select * from Customer WHERE NAME REGEXP '^A+';
+--------+---------------+----------+------+------------+------+
| custId | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C01    | Ashley        | Ash      | WDC  | 321200     |   34 |
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
2 rows in set (0.05 sec)

MariaDB [csd2204s18]> select * from Customer WHERE CITY REGEXP '^.(4)';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from Customer WHERE city REGEXP '^.(4)';
Empty set (0.00 sec)

MariaDB [csd2204s18]> select * from Customer WHERE city REGEXP '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | NEW YORK   | 120134     |   20 |
| C04    | Donna Newman    | New      | Brazil     | 341020     |   25 |
| C05    | Daniel Jack     | Dj       | toronto    | 130120     |   50 |
| C06    | Eston m.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | NEW YORK   | 320300     |   70 |
| C10    | Jack Sp         | sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.02 sec)

MariaDB [csd2204s18]> select * from Customer WHERE city rLIKE REGEXP '^.{4}';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'REGEXP '^.{4}'' at line 1
MariaDB [csd2204s18]> select * from Customer WHERE city rLIKE '^.{4}';
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C02    | Bob marley      | BM       | TORONTO    | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | NEW YORK   | 120134     |   20 |
| C04    | Donna Newman    | New      | Brazil     | 341020     |   25 |
| C05    | Daniel Jack     | Dj       | toronto    | 130120     |   50 |
| C06    | Eston m.        | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko    | Chac     | NEW YORK   | 320300     |   70 |
| C10    | Jack Sp         | sparrow  | New Jersey | 102301     |   35 |
+--------+-----------------+----------+------------+------------+------+
7 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2018-05-14 |
+------------+
1 row in set (0.05 sec)

MariaDB [csd2204s18]> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2018-05-14 09:15:39 |
+---------------------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> ALTER TABLE CUSTOMER ADD COLUMN dob DATE;
Query OK, 0 rows affected (0.60 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [csd2204s18]> DESC CUSTOMER;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(10) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| dob        | date        | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.03 sec)

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1996-04-15' where custId = 'C01';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1996-08-16' where custId = 'C02';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1976-08-26' where custId = 'C03';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1993-11-31' where custId = 'C04';
Query OK, 1 row affected, 1 warning (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1992-04-18' where custId = 'C05';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1988-05-04' where custId = 'C06';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1989-75-94' where custId = 'C07';
Query OK, 1 row affected, 1 warning (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1991-11-96' where custId = 'C08';
Query OK, 1 row affected, 1 warning (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 1

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1997-11-04' where custId = 'C09';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> UPDATE Customer SET dob = '1993-04-24' where custId = 'C10';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [csd2204s18]> SELECT * FROM CUSTOMER;
+--------+-----------------+----------+------------+------------+------+------------+
| custId | name            | nickname | city       | postalcode | age  | dob        |
+--------+-----------------+----------+------------+------------+------+------------+
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 | 1996-04-15 |
| C02    | Bob marley      | BM       | TORONTO    | 100100     |   23 | 1996-08-16 |
| C03    | Cherlies Theron | Cher     | NEW YORK   | 120134     |   20 | 1976-08-26 |
| C04    | Donna Newman    | New      | Brazil     | 341020     |   25 | 0000-00-00 |
| C05    | Daniel Jack     | Dj       | toronto    | 130120     |   50 | 1992-04-18 |
| C06    | Eston m.        | M.       | toronto    | 201023     |   65 | 1988-05-04 |
| C07    | Bobby Chacko    | Chac     | NEW YORK   | 320300     |   70 | 0000-00-00 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 | 0000-00-00 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 | 1997-11-04 |
| C10    | Jack Sp         | sparrow  | New Jersey | 102301     |   35 | 1993-04-24 |
+--------+-----------------+----------+------------+------------+------+------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,curdate()) "age" from CUSTOMER;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1996-04-15 |   22 |
| Bob marley      | 1996-08-16 |   21 |
| Cherlies Theron | 1976-08-26 |   41 |
| Donna Newman    | 0000-00-00 | NULL |
| Daniel Jack     | 1992-04-18 |   26 |
| Eston m.        | 1988-05-04 |   30 |
| Bobby Chacko    | 0000-00-00 | NULL |
| Ashko Charles   | 0000-00-00 | NULL |
| Tony Special    | 1997-11-04 |   20 |
| Jack Sp         | 1993-04-24 |   25 |
+-----------------+------------+------+
10 rows in set (0.02 sec)

MariaDB [csd2204s18]> SELECT name, dob, TIMESTAMPDIFF(DAY,dob,curdate()) "age" from CUSTOMER;
+-----------------+------------+-------+
| name            | dob        | age   |
+-----------------+------------+-------+
| Ashley          | 1996-04-15 |  8064 |
| Bob marley      | 1996-08-16 |  7941 |
| Cherlies Theron | 1976-08-26 | 15236 |
| Donna Newman    | 0000-00-00 |  NULL |
| Daniel Jack     | 1992-04-18 |  9522 |
| Eston m.        | 1988-05-04 | 10967 |
| Bobby Chacko    | 0000-00-00 |  NULL |
| Ashko Charles   | 0000-00-00 |  NULL |
| Tony Special    | 1997-11-04 |  7496 |
| Jack Sp         | 1993-04-24 |  9151 |
+-----------------+------------+-------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,curdate()) "age" from CUSTOMER;
+-----------------+------------+------+
| name            | dob        | age  |
+-----------------+------------+------+
| Ashley          | 1996-04-15 |   22 |
| Bob marley      | 1996-08-16 |   21 |
| Cherlies Theron | 1976-08-26 |   41 |
| Donna Newman    | 0000-00-00 | NULL |
| Daniel Jack     | 1992-04-18 |   26 |
| Eston m.        | 1988-05-04 |   30 |
| Bobby Chacko    | 0000-00-00 | NULL |
| Ashko Charles   | 0000-00-00 | NULL |
| Tony Special    | 1997-11-04 |   20 |
| Jack Sp         | 1993-04-24 |   25 |
+-----------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [csd2204s18]> SELECT name, dob, TIMESTAMPDIFF(YEAR,dob,curdate()) "age" from CUSTOMER having age = 22;
+--------+------------+------+
| name   | dob        | age  |
+--------+------------+------+
| Ashley | 1996-04-15 |   22 |
+--------+------------+------+
1 row in set (0.03 sec)

MariaDB [csd2204s18]> exit
