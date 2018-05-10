Microsoft Windows [Version 10.0.16299.402]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\738026>cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 4
Server version: 10.1.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW TABLES;
ERROR 1046 (3D000): No database selected
MariaDB [(none)]> USE CSD2204s18
Database changed
MariaDB [CSD2204s18]> SHOW TABLES;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.05 sec)

MariaDB [CSD2204s18]> DESC Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custId     | varchar(10) | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.08 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C01','Ashley','Ash','WDC','321200',34);
Query OK, 1 row affected (0.10 sec)

MariaDB [CSD2204s18]> select* from customer;
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalcode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C02','Bob marley','BM','TORONTO','100100',23;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [CSD2204s18]>  INSERT INTO Customer VALUES('C02','Bob marley','BM','TORONTO','100100',23);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204s18]>  INSERT INTO Customer VALUES('C03','Cherlies Theron','Cher','NEW YORK','120134',20);
Query OK, 1 row affected (0.06 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C04','Donna Newman','New','Brazil','341020',25);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C05','Daniel Jack','Dj','toronto','130120',50);
Query OK, 1 row affected (0.02 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C06','Eston m.','M.','toronto','201023',65);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C07','Bobby Chacko','Chac','NEW YORK','320300',70);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C08','Ashko Charles','AK','USA','421044',72);
Query OK, 1 row affected (0.01 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C09','Tony Special','Specie','GTA','418921',62);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204s18]> INSERT INTO Customer VALUES('C10','Jack Sp','sparrow','New Jersey','102301',35);
Query OK, 1 row affected (0.03 sec)

MariaDB [CSD2204s18]> select* from customer;
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
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> tee C:\xampp\mysql\bin\Day4LogKARANSALGOTRA.SQL
Logging to file 'C:\xampp\mysql\bin\Day4LogKARANSALGOTRA.SQL'
MariaDB [CSD2204s18]> select* from customer;
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
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select name, nickname from customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| Ashley          | Ash      |
| Bob marley      | BM       |
| Cherlies Theron | Cher     |
| Donna Newman    | New      |
| Daniel Jack     | Dj       |
| Eston m.        | M.       |
| Bobby Chacko    | Chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specie   |
| Jack Sp         | sparrow  |
+-----------------+----------+
10 rows in set (0.02 sec)

MariaDB [CSD2204s18]> selctcity,PostalCode from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selctcity,PostalCode from customer' at line 1
MariaDB [CSD2204s18]>  selct city,PostalCode from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selct city,PostalCode from customer' at line 1
MariaDB [CSD2204s18]>  selct  city, PostalCode from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selct  city, PostalCode from customer' at line 1
MariaDB [CSD2204s18]>  selct city, postalcode from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'selct city, postalcode from customer' at line 1
MariaDB [CSD2204s18]>  select city, postalcode from customer;
+------------+------------+
| city       | postalcode |
+------------+------------+
| WDC        | 321200     |
| TORONTO    | 100100     |
| NEW YORK   | 120134     |
| Brazil     | 341020     |
| toronto    | 130120     |
| toronto    | 201023     |
| NEW YORK   | 320300     |
| USA        | 421044     |
| GTA        | 418921     |
| New Jersey | 102301     |
+------------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where name = 'Ashley';
+--------+--------+----------+------+------------+------+
| custId | name   | nickname | city | postalcode | age  |
+--------+--------+----------+------+------------+------+
| C01    | Ashley | Ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.01 sec)

MariaDB [CSD2204s18]> select city from where customer name = 'Eston M.';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where customer name = 'Eston M.'' at line 1
MariaDB [CSD2204s18]> select city from where customer name = 'Eston M.';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where customer name = 'Eston M.'' at line 1
MariaDB [CSD2204s18]> select city from customer where name = 'Eston m.';
+---------+
| city    |
+---------+
| toronto |
+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select name, cityfrom customer where age = 50;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where age = 50' at line 1
MariaDB [CSD2204s18]> select name, city from customer where age = 50;
+-------------+---------+
| name        | city    |
+-------------+---------+
| Daniel Jack | toronto |
+-------------+---------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select name, city from customer where age > 50;
+---------------+----------+
| name          | city     |
+---------------+----------+
| Eston m.      | toronto  |
| Bobby Chacko  | NEW YORK |
| Ashko Charles | USA      |
| Tony Special  | GTA      |
+---------------+----------+
4 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select name, city from customer where age < 50;
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Ashley          | WDC        |
| Bob marley      | TORONTO    |
| Cherlies Theron | NEW YORK   |
| Donna Newman    | Brazil     |
| Jack Sp         | New Jersey |
+-----------------+------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select name, city from customer where name < 'ashley';
+---------------+------+
| name          | city |
+---------------+------+
| Ashko Charles | USA  |
+---------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select name, city from customer where name > 'ashley';
+-----------------+------------+
| name            | city       |
+-----------------+------------+
| Bob marley      | TORONTO    |
| Cherlies Theron | NEW YORK   |
| Donna Newman    | Brazil     |
| Daniel Jack     | toronto    |
| Eston m.        | toronto    |
| Bobby Chacko    | NEW YORK   |
| Tony Special    | GTA        |
| Jack Sp         | New Jersey |
+-----------------+------------+
8 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select name, city from customer where name > 'donna';
+--------------+------------+
| name         | city       |
+--------------+------------+
| Donna Newman | Brazil     |
| Eston m.     | toronto    |
| Tony Special | GTA        |
| Jack Sp      | New Jersey |
+--------------+------------+
4 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where name > 'donna';
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalcode | age  |
+--------+--------------+----------+------------+------------+------+
| C04    | Donna Newman | New      | Brazil     | 341020     |   25 |
| C06    | Eston m.     | M.       | toronto    | 201023     |   65 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where name < 'donna';
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | Bob marley      | BM       | TORONTO  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | NEW YORK | 120134     |   20 |
| C05    | Daniel Jack     | Dj       | toronto  | 130120     |   50 |
| C07    | Bobby Chacko    | Chac     | NEW YORK | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select name,city from customer where name = 'ashley' OR city = 'Toronto' ;
+-------------+---------+
| name        | city    |
+-------------+---------+
| Ashley      | WDC     |
| Bob marley  | TORONTO |
| Daniel Jack | toronto |
| Eston m.    | toronto |
+-------------+---------+
4 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select name,city from customer where city = 'Toronto' or 'new york' ;
+-------------+---------+
| name        | city    |
+-------------+---------+
| Bob marley  | TORONTO |
| Daniel Jack | toronto |
| Eston m.    | toronto |
+-------------+---------+
3 rows in set, 4 warnings (0.00 sec)

MariaDB [CSD2204s18]> select name,city from customer where city = 'Toronto' or 'New York' ;
+-------------+---------+
| name        | city    |
+-------------+---------+
| Bob marley  | TORONTO |
| Daniel Jack | toronto |
| Eston m.    | toronto |
+-------------+---------+
3 rows in set, 4 warnings (0.00 sec)

MariaDB [CSD2204s18]> select name,age from customer where city = 'Toronto' and age > 50 ;
+----------+------+
| name     | age  |
+----------+------+
| Eston m. |   65 |
+----------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer;
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
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where city = 'toronto';
+--------+-------------+----------+---------+------------+------+
| custId | name        | nickname | city    | postalcode | age  |
+--------+-------------+----------+---------+------------+------+
| C02    | Bob marley  | BM       | TORONTO | 100100     |   23 |
| C05    | Daniel Jack | Dj       | toronto | 130120     |   50 |
| C06    | Eston m.    | M.       | toronto | 201023     |   65 |
+--------+-------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select count (*) from cuxtomer where city = 'toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*) from cuxtomer where city = 'toronto'' at line 1
MariaDB [CSD2204s18]> select count (*) from customer where city = 'toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*) from customer where city = 'toronto'' at line 1
MariaDB [CSD2204s18]> select count(*) from customer where city = 'toronto';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.01 sec)

MariaDB [CSD2204s18]> select count(*) "No of customers in Toronto" from customer where city = 'toronto';
+----------------------------+
| No of customers in Toronto |
+----------------------------+
|                          3 |
+----------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select count(*) "No of customers who have age above 50" from customer where age  > 50;
+---------------------------------------+
| No of customers who have age above 50 |
+---------------------------------------+
|                                     4 |
+---------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select (*) "No of customers who have age between 30-70" from customer where age > 30 and age < 70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '*) "No of customers who have age between 30-70" from customer where age > 30 and' at line 1
MariaDB [CSD2204s18]> select * "No of customers who have age between 30-70" from customer where age > 30 and age < 70;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '"No of customers who have age between 30-70" from customer where age > 30 and ag' at line 1
MariaDB [CSD2204s18]> select * from customer where age > 30 && age <= 70;
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalcode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C05    | Daniel Jack  | Dj       | toronto    | 130120     |   50 |
| C06    | Eston m.     | M.       | toronto    | 201023     |   65 |
| C07    | Bobby Chacko | Chac     | NEW YORK   | 320300     |   70 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select max(age) from customer;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.06 sec)

MariaDB [CSD2204s18]> select min(age) from customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select avg(age) from customer;
+----------+
| avg(age) |
+----------+
|  45.6000 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select 'list of customers whose name starts with B';
+--------------------------------------------+
| list of customers whose name starts with B |
+--------------------------------------------+
| list of customers whose name starts with B |
+--------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where name like '%B';
Empty set (0.02 sec)

MariaDB [CSD2204s18]> select * from customer where name like '%B';
Empty set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where name LIKE '%B';
Empty set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where name LIKE 'B%';
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalcode | age  |
+--------+--------------+----------+----------+------------+------+
| C02    | Bob marley   | BM       | TORONTO  | 100100     |   23 |
| C07    | Bobby Chacko | Chac     | NEW YORK | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204s18]> SELECT * FROM CUSTOMER;
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
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer where name LIKE '__N_A_%';
+--------+--------------+----------+--------+------------+------+
| custId | name         | nickname | city   | postalcode | age  |
+--------+--------------+----------+--------+------------+------+
| C04    | Donna Newman | New      | Brazil | 341020     |   25 |
+--------+--------------+----------+--------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer LIMIT 4;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | Ashley          | Ash      | WDC      | 321200     |   34 |
| C02    | Bob marley      | BM       | TORONTO  | 100100     |   23 |
| C03    | Cherlies Theron | Cher     | NEW YORK | 120134     |   20 |
| C04    | Donna Newman    | New      | Brazil   | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer WHERE age IN (20, 25, 65, 72);
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | NEW YORK | 120134     |   20 |
| C04    | Donna Newman    | New      | Brazil   | 341020     |   25 |
| C06    | Eston m.        | M.       | toronto  | 201023     |   65 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer WHERE age NOT IN (20, 25, 65, 72);
+--------+--------------+----------+------------+------------+------+
| custId | name         | nickname | city       | postalcode | age  |
+--------+--------------+----------+------------+------------+------+
| C01    | Ashley       | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley   | BM       | TORONTO    | 100100     |   23 |
| C05    | Daniel Jack  | Dj       | toronto    | 130120     |   50 |
| C07    | Bobby Chacko | Chac     | NEW YORK   | 320300     |   70 |
| C09    | Tony Special | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp      | sparrow  | New Jersey | 102301     |   35 |
+--------+--------------+----------+------------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer WHERE CITY IN (TORONTO, GTA, USA, WDC);
ERROR 1054 (42S22): Unknown column 'TORONTO' in 'where clause'
MariaDB [CSD2204s18]> select * from customer WHERE CITY IN ('TORONTO', 'GTA', 'USA', 'WDC');
+--------+---------------+----------+---------+------------+------+
| custId | name          | nickname | city    | postalcode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | Ashley        | Ash      | WDC     | 321200     |   34 |
| C02    | Bob marley    | BM       | TORONTO | 100100     |   23 |
| C05    | Daniel Jack   | Dj       | toronto | 130120     |   50 |
| C06    | Eston m.      | M.       | toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
6 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer WHERE CITY IN ('T%', 'G5', 'U%', 'W%');
Empty set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer WHERE CITY IN ('T%', 'G%', 'U%', 'W%');
Empty set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer WHERE CITY LIKE ('T%', 'G%', 'U%', 'W%');
ERROR 1241 (21000): Operand should contain 1 column(s)
MariaDB [CSD2204s18]> select distinct(city) 'Unique Cities' from customer;
+---------------+
| Unique Cities |
+---------------+
| WDC           |
| TORONTO       |
| NEW YORK      |
| Brazil        |
| USA           |
| GTA           |
| New Jersey    |
+---------------+
7 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select count(distinct(city)) 'Unique Cities' from customer;
+---------------+
| Unique Cities |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer order by name;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | BM       | TORONTO    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | NEW YORK   | 320300     |   70 |
| C03    | Cherlies Theron | Cher     | NEW YORK   | 120134     |   20 |
| C05    | Daniel Jack     | Dj       | toronto    | 130120     |   50 |
| C04    | Donna Newman    | New      | Brazil     | 341020     |   25 |
| C06    | Eston m.        | M.       | toronto    | 201023     |   65 |
| C10    | Jack Sp         | sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.05 sec)

MariaDB [CSD2204s18]> select * from customer order by name asc;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C02    | Bob marley      | BM       | TORONTO    | 100100     |   23 |
| C07    | Bobby Chacko    | Chac     | NEW YORK   | 320300     |   70 |
| C03    | Cherlies Theron | Cher     | NEW YORK   | 120134     |   20 |
| C05    | Daniel Jack     | Dj       | toronto    | 130120     |   50 |
| C04    | Donna Newman    | New      | Brazil     | 341020     |   25 |
| C06    | Eston m.        | M.       | toronto    | 201023     |   65 |
| C10    | Jack Sp         | sparrow  | New Jersey | 102301     |   35 |
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer order by name desc;
+--------+-----------------+----------+------------+------------+------+
| custId | name            | nickname | city       | postalcode | age  |
+--------+-----------------+----------+------------+------------+------+
| C09    | Tony Special    | Specie   | GTA        | 418921     |   62 |
| C10    | Jack Sp         | sparrow  | New Jersey | 102301     |   35 |
| C06    | Eston m.        | M.       | toronto    | 201023     |   65 |
| C04    | Donna Newman    | New      | Brazil     | 341020     |   25 |
| C05    | Daniel Jack     | Dj       | toronto    | 130120     |   50 |
| C03    | Cherlies Theron | Cher     | NEW YORK   | 120134     |   20 |
| C07    | Bobby Chacko    | Chac     | NEW YORK   | 320300     |   70 |
| C02    | Bob marley      | BM       | TORONTO    | 100100     |   23 |
| C01    | Ashley          | Ash      | WDC        | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA        | 421044     |   72 |
+--------+-----------------+----------+------------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from customer order by age desc LIMIT 2;
+--------+---------------+----------+----------+------------+------+
| custId | name          | nickname | city     | postalcode | age  |
+--------+---------------+----------+----------+------------+------+
| C08    | Ashko Charles | AK       | USA      | 421044     |   72 |
| C07    | Bobby Chacko  | Chac     | NEW YORK | 320300     |   70 |
+--------+---------------+----------+----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204s18]> select * from (select * from customer order by age DESC limit 2) AS t order by asc limit 1 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'asc limit 1' at line 1
MariaDB [CSD2204s18]> select * from (select * from customer order by age DESC limit 2) AS t order by age limit 1 ;
+--------+--------------+----------+----------+------------+------+
| custId | name         | nickname | city     | postalcode | age  |
+--------+--------------+----------+----------+------------+------+
| C07    | Bobby Chacko | Chac     | NEW YORK | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select * from (select * from customer order by age asc limit 2) AS t order by age limit 1 ;
+--------+-----------------+----------+----------+------------+------+
| custId | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | Cherlies Theron | Cher     | NEW YORK | 120134     |   20 |
+--------+-----------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| customer             |
+----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204s18]> select max(age)+10*20/2;
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
MariaDB [CSD2204s18]> select max(age)+10*20/2 ;
ERROR 1054 (42S22): Unknown column 'age' in 'field list'
MariaDB [CSD2204s18]> select * from customer;
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
10 rows in set (0.00 sec)

MariaDB [CSD2204s18]> tee C:\Users\738026\Downloads\Day4LogKARANSALGOTRA.SQL
Logging to file 'C:\Users\738026\Downloads\Day4LogKARANSALGOTRA.SQL'
MariaDB [CSD2204s18]> exitBye

C:\xampp\mysql\bin>

C:\xampp\mysql\bin>