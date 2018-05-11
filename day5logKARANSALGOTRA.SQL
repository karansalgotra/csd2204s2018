Microsoft Windows [Version 10.0.16299.125]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\hh>cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.6.26 MySQL Community Server (GPL)

Copyright (c) 2000, 2015, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use csd2204s18
ERROR 1049 (42000): Unknown database 'csd2204s18'
mysql> show database
    -> create database ;;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database
create database' at line 1
ERROR:
No query specified

mysql>
mysql> create database csd2204s18;
Query OK, 1 row affected (0.06 sec)

mysql> use csd2204s18
Database changed
mysql> create table persons (
    -> ID integer(3),
    -> LasName varchar(255) NOT NULL,
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> create table persons (
    -> ID integer(3),
    -> LasTName varchar(255) NOT NULL,
    -> FIRSTNAME VARCHAR(255),
    -> AGE INTEGER(3),
    -> CONSTRANT PK_PERSON PRIMARY KEY(ID,LASTNAME));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PK_PERSON PRIMARY KEY(ID,LASTNAME))' at line 6
mysql> create table persons (
    -> ID integer(3),
    -> Lastname varchar(255) NOT NULL,
    -> FIRSTNAME VARCHAR(255),
    -> AGE INTEGER(3),
    -> CONSTRANT PK_PERSON PRIMARY KEY(ID,LASTNAME));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PK_PERSON PRIMARY KEY(ID,LASTNAME))' at line 6
mysql> create table persons (
    -> ID integer(3),
    -> Lastname varchar(255) NOT NULL,
    -> FIRSTNAME VARCHAR(255),
    -> AGE INTEGER(3),
    -> CONSTRANT PK_PERSON PRIMARY KEY(ID,Lastname));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PK_PERSON PRIMARY KEY(ID,Lastname))' at line 6
mysql> create table persons (
    -> ID integer(3),
    -> Lastname varchar(255) NOT NULL,
    -> FIRSTNAME VARCHAR(255),
    -> AGE INTEGER(3),
    -> PRIMARY KEY(ID,Lastname));
Query OK, 0 rows affected (0.61 sec)

mysql> CREATE TABLES Orders (
    -> OrderID interger(3) NOTNULL
    -> OrderNumber integer(3) NOTNULL,
    -> PersonID integer(3),
    -> PRIMARYKEY (OrderID),
    -> CONSTRANT FK_PersonOrder FORIEGNKEY (PersonID) Refrences Person(ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLES Orders (
OrderID interger(3) NOTNULL
OrderNumber integer(3) NOTNULL,
Pers' at line 1
mysql> CREATE TABLES Orders (
    -> OrderID interger(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> FORIEGN KEY (PersonID) References Persons(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLES Orders (
OrderID interger(3) NOT NULL,
OrderNumber integer(3) NOT NULL,
P' at line 1
mysql> CREATE TABLE Orders (
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> FORIEGN KEY (PersonID) References Persons(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KEY (PersonID) References Persons(ID))' at line 6
mysql> CREATE TABLE Orders (
    -> OrderID integer(3),
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> FORIEGN KEY (PersonID) References Persons(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KEY (PersonID) References Persons(ID))' at line 6
mysql> CREATE TABLES Orders(
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLES Orders(' at line 1
mysql> CREATE TABLE Orders(
    -> OrderID integer(3),
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY (OrderID),
    -> FORIEGN KEY (PersonID) References Persons(ID));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KEY (PersonID) References Persons(ID))' at line 6
mysql> mysql> create table test1
    ->     -> (id int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> create table test1
    -> (id int)' at line 1
mysql> ERROR 1046 (3D000): No database selected
    -> mysql> use csd2204s18
    -> Database changed
    -> mysql> create table test1
    ->     -> (id int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1046 (3D000): No database selected
mysql> use csd2204s18
Database changed
' at line 1
mysql> Query OK, 0 rows affected (0.11 sec)
    ->
    -> mysql> alter table test1 add primary key(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.11 sec)

mysql> alter table test1 add primary key(i' at line 1
mysql> Query OK, 0 rows affected (0.26 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> create table test2
    ->     -> (id int,
    ->     -> foreign key (id) references test1(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> create table test2
    ->     -> (id int,
    ->     -> foreign key (id) references test1(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> Query OK, 0 rows affected (0.12 sec)
    ->
    -> mysql> create table persons
    ->     -> ( id integer(5),
    ->     -> lastname varchar(255),
    ->     -> firstname varchar(255) not null,
    ->     -> age integer(3) not null,
    ->     -> primary key(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.12 sec)

mysql> create table persons
    -> ( id ' at line 1
mysql> Query OK, 0 rows affected (0.13 sec)
    ->
    -> mysql> alter table persons modify lastname(255)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.13 sec)

mysql> alter table persons modify lastname' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(255)not null' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> alter table persons modify lastname varchar(255)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> Query OK, 0 rows affected (0.44 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> desc persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.44 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> +-----------+--------------+------+-----+---------+-------+
    -> | Field     | Type         | Null | Key | Default | Extra |
    -> +-----------+--------------+------+-----+---------+-------+
    -> | id        | int(5)       | NO   | PRI | 0       |       |
    -> | lastname  | varchar(255) | NO   |     | NULL    |       |
    -> | firstname | varchar(255) | NO   |     | NULL    |       |
    -> | age       | int(3)       | NO   |     | NULL    |       |
    -> +-----------+--------------+------+-----+---------+-------+
    -> 4 rows in set (0.01 sec)
    ->
    -> mysql> create table orders
    ->     -> orderid integer(3) not null,'
    '>     '> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------+--------------+------+-----+---------+-------+
| Field     | Type  ' at line 1
mysql>     '> ;
    '>     '> ';
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,'
    '> ;
    '> ;
    '> '' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3), not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),
    '>     -> foreign key(personid) references persons(id));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3), not null,
    -> personid integer(' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3), not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3), not null,
    -> personid integer(' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3) not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personid integer(3' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3) not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),
    '>     -> foreign key(personid) references persons(id));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personid integer(3' at line 2
    '> mysql> desc persons;
    '> +-----------+--------------+------+-----+---------+-------+
    '> | Field     | Type         | Null | Key | Default | Extra |
    '> +-----------+--------------+------+-----+---------+-------+
    '> | id        | int(5)       | NO   | PRI | 0       |       |
    '> | lastname  | varchar(255) | NO   |     | NULL    |       |
    '> | firstname | varchar(255) | NO   |     | NULL    |       |
    '> | age       | int(3)       | NO   |     | NULL    |       |
    '> +-----------+--------------+------+-----+---------+-------+
    '> 4 rows in set (0.06 sec)
    '>
    '> mysql> create table orders
    '>     -> orderid integer(5) not null,
    '>     -> ordernumber integer(5) not null,
    '>     -> personid integer(5),
    '>     -> primary key(orderid),
    '>     -> foreign key(personid) references persons(id));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(5) not null,
    -> ordernumber integer(5) not null,
    -> personid integer(5' at line 2
    '> mysql> desc persons
    '>     -> ;
    '> +-----------+--------------+------+-----+---------+-------+
    '> | Field     | Type         | Null | Key | Default | Extra |
    '> +-----------+--------------+------+-----+---------+-------+
    '> | id        | int(5)       | NO   | PRI | 0       |       |
    '> | lastname  | varchar(255) | NO   |     | NULL    |       |
    '> | firstname | varchar(255) | NO   |     | NULL    |       |
    '> | age       | int(3)       | NO   |     | NULL    |       |
    '> +-----------+--------------+------+-----+---------+-------+
    '> 4 rows in set (0.01 sec)
    '>
    '> mysql> desc orders
    '>     -> ;
    '> ERROR 1146 (42S02): Table 'csd2204s18.orders' doesn't exist
    -> mysql> create table orders
    ->     -> (orderid integer(5) not null,
    ->     -> ordernumber integer(5) not null,
    ->     -> personid integer(5),
    ->     -> primary key(orderid),
    ->     -> foreign key(personid) references persons(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''> ;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check t' at line 1
mysql> Query OK, 0 rows affected (0.14 sec)
    ->
    -> mysql>
    -> mysql> create table test3 as select*from persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.14 sec)

mysql>
mysql> create table test3 as selec' at line 1
mysql> Query OK, 0 rows affected (0.10 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> desc test3
    ->     -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> +-----------+--------------+------+-----+---------+-------+
    -> | Field     | Type         | Null | Key | Default | Extra |
    -> +-----------+--------------+------+-----+---------+-------+
    -> | id        | int(5)       | NO   |     | 0       |       |
    -> | lastname  | varchar(255) | NO   |     | NULL    |       |
    -> | firstname | varchar(255) | NO   |     | NULL    |       |
    -> | age       | int(3)       | NO   |     | NULL    |       |
    -> +-----------+--------------+------+-----+---------+-------+
    -> 4 rows in set (0.26 sec)
    ->
    -> mysql> create table test4 as like persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------+--------------+------+-----+---------+-------+
| Field     | Type  ' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like persons' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> create table test4 like persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> Query OK, 0 rows affected (0.05 sec)
    ->
    -> mysql> desc test4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.05 sec)

mysql> desc test4' at line 1
mysql> +-----------+--------------+------+-----+---------+-------+
    -> | Field     | Type         | Null | Key | Default | Extra |
    -> +-----------+--------------+------+-----+---------+-------+
    -> | id        | int(5)       | NO   | PRI | 0       |       |
    -> | lastname  | varchar(255) | NO   |     | NULL    |       |
    -> | firstname | varchar(255) | NO   |     | NULL    |       |
    -> | age       | int(3)       | NO   |     | NULL    |       |
    -> +-----------+--------------+------+-----+---------+-------+
    -> 4 rows in set (0.00 sec)
    ->
    -> mysql> select*from test3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------+--------------+------+-----+---------+-------+
| Field     | Type  ' at line 1
mysql> Empty set (0.00 sec)
    ->
    -> mysql> select*from test4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empty set (0.00 sec)

mysql> select*from test4' at line 1
mysql> Empty set (0.00 sec)
    ->
    -> mysql> select*from persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empty set (0.00 sec)

mysql> select*from persons' at line 1
mysql> Empty set (0.00 sec)
    ->
    -> mysql> alter table persons add column city varchar(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empty set (0.00 sec)

mysql> alter table persons add column city varchar(50)' at line 1
mysql> Query OK, 0 rows affected (0.21 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> alter table persons modify column city varchar(30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> Query OK, 0 rows affected (0.20 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> alter table customers modify column city city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.20 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> alter table customers modify column  city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(70)' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> desc customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
    '> mysql> desc customer;
    '> +------------+-------------+------+-----+---------+-------+
    '> | Field      | Type        | Null | Key | Default | Extra |
    '> +------------+-------------+------+-----+---------+-------+
    '> | custid     | varchar(20) | NO   | PRI | NULL    |       |
    '> | name       | varchar(50) | YES  |     | NULL    |       |
    '> | nickname   | varchar(10) | YES  |     | NULL    |       |
    '> | city       | varchar(20) | YES  |     | NULL    |       |
    '> | postalcode | varchar(10) | YES  |     | NULL    |       |
    '> | age        | int(3)      | YES  |     | NULL    |       |
    '> +------------+-------------+------+-----+---------+-------+
    '> 6 rows in set (0.00 sec)
    '>
    '> mysql> alter table customer modify column city city(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
    '> mysql> alter table customer modify city city(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
    '> mysql> alter table customer modify column city(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(70)' at line 1
    '> mysql> alter table customer modify column city city varchar(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city varchar(70)' at line 1
    '> mysql> alter table customer modify column city varchar(70);
    '> Query OK, 10 rows affected (0.21 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer drop primary key;
    '> Query OK, 10 rows affected (0.25 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer add primary key(custid);
    '> Query OK, 10 rows affected (0.25 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer modify column age age integer(5)not null);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)not null)' at line 1
    '> mysql> alter table customer modify column age age integer(5) not null;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5) not null' at line 1
    '> mysql> alter table customer modify column age age integer(5) ;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)' at line 1
    '> mysql> alter table customer modify column age age integer(5);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)' at line 1
    '> mysql> alter table customer modify column age integer(5)not null;
    '> Query OK, 10 rows affected (0.27 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> desc customer;
    '> +------------+-------------+------+-----+---------+-------+
    '> | Field      | Type        | Null | Key | Default | Extra |
    '> +------------+-------------+------+-----+---------+-------+
    '> | custid     | varchar(20) | NO   | PRI | NULL    |       |
    '> | name       | varchar(50) | YES  |     | NULL    |       |
    '> | nickname   | varchar(10) | YES  |     | NULL    |       |
    '> | city       | varchar(70) | YES  |     | NULL    |       |
    '> | postalcode | varchar(10) | YES  |     | NULL    |       |
    '> | age        | int(5)      | NO   |     | NULL    |       |
    '> +------------+-------------+------+-----+---------+-------+
    '> 6 rows in set (0.01 sec)
    '>
    '> mysql> rename test1  to tt;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'test1  to tt' at line 1
    '> mysql> alter table test1 rename tt;
    '> Query OK, 0 rows affected (0.09 sec)
    '>
    '> mysql> alter table customer drop primary key(custid);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(custid)' at line 1
    '> mysql> alter table customer drop primary key;
    '> Query OK, 10 rows affected (0.25 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer add primary key(custid);
    '> Query OK, 10 rows affected (0.22 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer drop index custid;
    '> ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
mysql> desc custo' at line 1
    -> mysql> alter table customer add primary key(custid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'that column/key exists
mysql> alter table customer add primary key(custid)' at line 1
mysql> ERROR 1068 (42000): Multiple primary key defined
    -> mysql> create index index1 on customer(custid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1068 (42000): Multiple primary key defined
mysql> create index index1 on c' at line 1
mysql> Query OK, 10 rows affected (0.25 sec)
    -> Records: 10  Duplicates: 0  Warnings: 0
    ->
    -> mysql> alter table customer drop index custid;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

m' at line 1
mysql> ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
    '> mysql> select*from index1;
    '> ERROR 1146 (42S02): Table 'csd2204s18.index1' doesn't exist
    -> mysql> select*from customer.index1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
mysql> sel' at line 1
mysql> ERROR 1146 (42S02): Table 'customer.index1' doesn't exist
    '> mysql> show index from customer;
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> 2 rows in set (0.00 sec)
    '>
    '> mysql> alter table customer drop index index1;
    '> Query OK, 10 rows affected (0.26 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> show index from customer;
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> 1 row in set (0.00 sec)
    '>
    '> mysql> create index index1 on customer(custid);
    '> Query OK, 10 rows affected (0.28 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> show index index1;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'index1' at line 1
    '> mysql> show index from customer;
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> 2 rows in set (0.00 sec)
    '>
    '> mysql> alter table customer drop index custid;
    '> ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1146 (42S02): Table 'customer.index1' doesn't exist
mysql> show index from' at line 1
    -> mysql> show index from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'that column/key exists
mysql> show index from customer' at line 1
mysql> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> 2 rows in set (0.00 sec)
    ->
    -> mysql> DROP INDEX 'primary' on customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------+------------+----------+--------------+-------------+-----------+---' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''primary' on customer' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> DROP INDEX primary on customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary on customer' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> show index from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> 2 rows in set (0.00 sec)
    ->
    -> mysql> desc customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------+------------+----------+--------------+-------------+-----------+---' at line 1
mysql> +------------+-------------+------+-----+---------+-------+
    -> | Field      | Type        | Null | Key | Default | Extra |
    -> +------------+-------------+------+-----+---------+-------+
    -> | custid     | varchar(20) | NO   | PRI | NULL    |       |
    -> | name       | varchar(50) | YES  |     | NULL    |       |
    -> | nickname   | varchar(10) | YES  |     | NULL    |       |
    -> | city       | varchar(70) | YES  |     | NULL    |       |
    -> | postalcode | varchar(10) | YES  |     | NULL    |       |
    -> | age        | int(5)      | NO   |     | NULL    |       |
    -> +------------+-------------+------+-----+---------+-------+
    -> 6 rows in set (0.26 sec)
    ->
    -> slect * from c3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+------------+-------------+------+-----+---------+-------+
| Field      | Type ' at line 1
mysql> select * from c3;
ERROR 1146 (42S02): Table 'csd2204s18.c3' doesn't exist
mysql> select * from customer;
ERROR 1146 (42S02): Table 'csd2204s18.customer' doesn't exist
mysql> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| persons              |
+----------------------+
1 row in set (0.05 sec)

mysql> select * from customer;mysql> create table test1
ERROR 1146 (42S02): Table 'csd2204s18.customer' doesn't exist
    ->     -> (id int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> create table test1
    -> (id int)' at line 1
mysql> ERROR 1046 (3D000): No database selected
    -> mysql> use csd2204s18
    -> Database changed
    -> mysql> create table test1
    ->     -> (id int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1046 (3D000): No database selected
mysql> use csd2204s18
Database changed
' at line 1
mysql> Query OK, 0 rows affected (0.11 sec)
    ->
    -> mysql> alter table test1 add primary key(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.11 sec)

mysql> alter table test1 add primary key(i' at line 1
mysql> Query OK, 0 rows affected (0.26 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> create table test2
    ->     -> (id int,
    ->     -> foreign key (id) references test1(id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> create table test2
    ->     -> (id int,
    ->     -> foreign key (id) references test1(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> Query OK, 0 rows affected (0.12 sec)
    ->
    -> mysql> create table persons
    ->     -> ( id integer(5),
    ->     -> lastname varchar(255),
    ->     -> firstname varchar(255) not null,
    ->     -> age integer(3) not null,
    ->     -> primary key(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.12 sec)

mysql> create table persons
    -> ( id ' at line 1
mysql> Query OK, 0 rows affected (0.13 sec)
    ->
    -> mysql> alter table persons modify lastname(255)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.13 sec)

mysql> alter table persons modify lastname' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(255)not null' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> alter table persons modify lastname varchar(255)not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> Query OK, 0 rows affected (0.44 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> desc persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.44 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> +-----------+--------------+------+-----+---------+-------+
    -> | Field     | Type         | Null | Key | Default | Extra |
    -> +-----------+--------------+------+-----+---------+-------+
    -> | id        | int(5)       | NO   | PRI | 0       |       |
    -> | lastname  | varchar(255) | NO   |     | NULL    |       |
    -> | firstname | varchar(255) | NO   |     | NULL    |       |
    -> | age       | int(3)       | NO   |     | NULL    |       |
    -> +-----------+--------------+------+-----+---------+-------+
    -> 4 rows in set (0.01 sec)
    ->
    -> mysql> create table orders
    ->     -> orderid integer(3) not null,'
    '>     '> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------+--------------+------+-----+---------+-------+
| Field     | Type  ' at line 1
mysql>     '> ;
    '>     '> ';
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,'
    '> ;
    '> ;
    '> '' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3), not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),
    '>     -> foreign key(personid) references persons(id));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3), not null,
    -> personid integer(' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3), not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3), not null,
    -> personid integer(' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3) not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personid integer(3' at line 2
    '> mysql> create table orders
    '>     -> orderid integer(3) not null,
    '>     -> ordernumber integer(3) not null,
    '>     -> personid integer(3),
    '>     -> primary key(orderid),
    '>     -> foreign key(personid) references persons(id));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(3) not null,
    -> ordernumber integer(3) not null,
    -> personid integer(3' at line 2
    '> mysql> desc persons;
    '> +-----------+--------------+------+-----+---------+-------+
    '> | Field     | Type         | Null | Key | Default | Extra |
    '> +-----------+--------------+------+-----+---------+-------+
    '> | id        | int(5)       | NO   | PRI | 0       |       |
    '> | lastname  | varchar(255) | NO   |     | NULL    |       |
    '> | firstname | varchar(255) | NO   |     | NULL    |       |
    '> | age       | int(3)       | NO   |     | NULL    |       |
    '> +-----------+--------------+------+-----+---------+-------+
    '> 4 rows in set (0.06 sec)
    '>
    '> mysql> create table orders
    '>     -> orderid integer(5) not null,
    '>     -> ordernumber integer(5) not null,
    '>     -> personid integer(5),
    '>     -> primary key(orderid),
    '>     -> foreign key(personid) references persons(id));
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'orderid integer(5) not null,
    -> ordernumber integer(5) not null,
    -> personid integer(5' at line 2
    '> mysql> desc persons
    '>     -> ;
    '> +-----------+--------------+------+-----+---------+-------+
    '> | Field     | Type         | Null | Key | Default | Extra |
    '> +-----------+--------------+------+-----+---------+-------+
    '> | id        | int(5)       | NO   | PRI | 0       |       |
    '> | lastname  | varchar(255) | NO   |     | NULL    |       |
    '> | firstname | varchar(255) | NO   |     | NULL    |       |
    '> | age       | int(3)       | NO   |     | NULL    |       |
    '> +-----------+--------------+------+-----+---------+-------+
    '> 4 rows in set (0.01 sec)
    '>
    '> mysql> desc orders
    '>     -> ;
    '> ERROR 1146 (42S02): Table 'csd2204s18.orders' doesn't exist
    -> mysql> create table orders
    ->     -> (orderid integer(5) not null,
    ->     -> ordernumber integer(5) not null,
    ->     -> personid integer(5),
    ->     -> primary key(orderid),
    ->     -> foreign key(personid) references persons(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''> ;
    '> ';
ERROR 1064 (42000): You have an error in your SQL syntax; check t' at line 1
mysql> Query OK, 0 rows affected (0.14 sec)
    ->
    -> mysql>
    -> mysql> create table test3 as select*from persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.14 sec)

mysql>
mysql> create table test3 as selec' at line 1
mysql> Query OK, 0 rows affected (0.10 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> desc test3
    ->     -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> +-----------+--------------+------+-----+---------+-------+
    -> | Field     | Type         | Null | Key | Default | Extra |
    -> +-----------+--------------+------+-----+---------+-------+
    -> | id        | int(5)       | NO   |     | 0       |       |
    -> | lastname  | varchar(255) | NO   |     | NULL    |       |
    -> | firstname | varchar(255) | NO   |     | NULL    |       |
    -> | age       | int(3)       | NO   |     | NULL    |       |
    -> +-----------+--------------+------+-----+---------+-------+
    -> 4 rows in set (0.26 sec)
    ->
    -> mysql> create table test4 as like persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------+--------------+------+-----+---------+-------+
| Field     | Type  ' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like persons' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> create table test4 like persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> Query OK, 0 rows affected (0.05 sec)
    ->
    -> mysql> desc test4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.05 sec)

mysql> desc test4' at line 1
mysql> +-----------+--------------+------+-----+---------+-------+
    -> | Field     | Type         | Null | Key | Default | Extra |
    -> +-----------+--------------+------+-----+---------+-------+
    -> | id        | int(5)       | NO   | PRI | 0       |       |
    -> | lastname  | varchar(255) | NO   |     | NULL    |       |
    -> | firstname | varchar(255) | NO   |     | NULL    |       |
    -> | age       | int(3)       | NO   |     | NULL    |       |
    -> +-----------+--------------+------+-----+---------+-------+
    -> 4 rows in set (0.00 sec)
    ->
    -> mysql> select*from test3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+-----------+--------------+------+-----+---------+-------+
| Field     | Type  ' at line 1
mysql> Empty set (0.00 sec)
    ->
    -> mysql> select*from test4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empty set (0.00 sec)

mysql> select*from test4' at line 1
mysql> Empty set (0.00 sec)
    ->
    -> mysql> select*from persons;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empty set (0.00 sec)

mysql> select*from persons' at line 1
mysql> Empty set (0.00 sec)
    ->
    -> mysql> alter table persons add column city varchar(50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Empty set (0.00 sec)

mysql> alter table persons add column city varchar(50)' at line 1
mysql> Query OK, 0 rows affected (0.21 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> alter table persons modify column city varchar(30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> Query OK, 0 rows affected (0.20 sec)
    -> Records: 0  Duplicates: 0  Warnings: 0
    ->
    -> mysql> alter table customers modify column city city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 0 rows affected (0.20 sec)
Records: 0  Duplicates: 0  Warnings: 0

mys' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> alter table customers modify column  city(70);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(70)' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> desc customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
    '> mysql> desc customer;
    '> +------------+-------------+------+-----+---------+-------+
    '> | Field      | Type        | Null | Key | Default | Extra |
    '> +------------+-------------+------+-----+---------+-------+
    '> | custid     | varchar(20) | NO   | PRI | NULL    |       |
    '> | name       | varchar(50) | YES  |     | NULL    |       |
    '> | nickname   | varchar(10) | YES  |     | NULL    |       |
    '> | city       | varchar(20) | YES  |     | NULL    |       |
    '> | postalcode | varchar(10) | YES  |     | NULL    |       |
    '> | age        | int(3)      | YES  |     | NULL    |       |
    '> +------------+-------------+------+-----+---------+-------+
    '> 6 rows in set (0.00 sec)
    '>
    '> mysql> alter table customer modify column city city(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
    '> mysql> alter table customer modify city city(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city(70)' at line 1
    '> mysql> alter table customer modify column city(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(70)' at line 1
    '> mysql> alter table customer modify column city city varchar(70);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'city varchar(70)' at line 1
    '> mysql> alter table customer modify column city varchar(70);
    '> Query OK, 10 rows affected (0.21 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer drop primary key;
    '> Query OK, 10 rows affected (0.25 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer add primary key(custid);
    '> Query OK, 10 rows affected (0.25 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer modify column age age integer(5)not null);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)not null)' at line 1
    '> mysql> alter table customer modify column age age integer(5) not null;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5) not null' at line 1
    '> mysql> alter table customer modify column age age integer(5) ;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)' at line 1
    '> mysql> alter table customer modify column age age integer(5);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age integer(5)' at line 1
    '> mysql> alter table customer modify column age integer(5)not null;
    '> Query OK, 10 rows affected (0.27 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> desc customer;
    '> +------------+-------------+------+-----+---------+-------+
    '> | Field      | Type        | Null | Key | Default | Extra |
    '> +------------+-------------+------+-----+---------+-------+
    '> | custid     | varchar(20) | NO   | PRI | NULL    |       |
    '> | name       | varchar(50) | YES  |     | NULL    |       |
    '> | nickname   | varchar(10) | YES  |     | NULL    |       |
    '> | city       | varchar(70) | YES  |     | NULL    |       |
    '> | postalcode | varchar(10) | YES  |     | NULL    |       |
    '> | age        | int(5)      | NO   |     | NULL    |       |
    '> +------------+-------------+------+-----+---------+-------+
    '> 6 rows in set (0.01 sec)
    '>
    '> mysql> rename test1  to tt;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'test1  to tt' at line 1
    '> mysql> alter table test1 rename tt;
    '> Query OK, 0 rows affected (0.09 sec)
    '>
    '> mysql> alter table customer drop primary key(custid);
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(custid)' at line 1
    '> mysql> alter table customer drop primary key;
    '> Query OK, 10 rows affected (0.25 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer add primary key(custid);
    '> Query OK, 10 rows affected (0.22 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> alter table customer drop index custid;
    '> ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1146 (42S02): Table 'csd2204s18.customers' doesn't exist
mysql> desc custo' at line 1
    -> mysql> alter table customer add primary key(custid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'that column/key exists
mysql> alter table customer add primary key(custid)' at line 1
mysql> ERROR 1068 (42000): Multiple primary key defined
    -> mysql> create index index1 on customer(custid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1068 (42000): Multiple primary key defined
mysql> create index index1 on c' at line 1
mysql> Query OK, 10 rows affected (0.25 sec)
    -> Records: 10  Duplicates: 0  Warnings: 0
    ->
    -> mysql> alter table customer drop index custid;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query OK, 10 rows affected (0.25 sec)
Records: 10  Duplicates: 0  Warnings: 0

m' at line 1
mysql> ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
    '> mysql> select*from index1;
    '> ERROR 1146 (42S02): Table 'csd2204s18.index1' doesn't exist
    -> mysql> select*from customer.index1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
mysql> sel' at line 1
mysql> ERROR 1146 (42S02): Table 'customer.index1' doesn't exist
    '> mysql> show index from customer;
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> 2 rows in set (0.00 sec)
    '>
    '> mysql> alter table customer drop index index1;
    '> Query OK, 10 rows affected (0.26 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> show index from customer;
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> 1 row in set (0.00 sec)
    '>
    '> mysql> create index index1 on customer(custid);
    '> Query OK, 10 rows affected (0.28 sec)
    '> Records: 10  Duplicates: 0  Warnings: 0
    '>
    '> mysql> show index index1;
    '> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'index1' at line 1
    '> mysql> show index from customer;
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    '> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    '> 2 rows in set (0.00 sec)
    '>
    '> mysql> alter table customer drop index custid;
    '> ERROR 1091 (42000): Can't DROP 'custid'; check that column/key exists
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1146 (42S02): Table 'customer.index1' doesn't exist
mysql> show index from' at line 1
    -> mysql> show index from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'that column/key exists
mysql> show index from customer' at line 1
mysql> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> 2 rows in set (0.00 sec)
    ->
    -> mysql> DROP INDEX 'primary' on customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------+------------+----------+--------------+-------------+-----------+---' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''primary' on customer' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> DROP INDEX primary on customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary on customer' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ERROR 1064 (42000): You have an error in your SQL syntax' at line 1
    -> mysql> show index from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'the manual that corresponds to your MySQL server version for the right syntax to' at line 1
mysql> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> | customer |          0 | PRIMARY  |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> | customer |          1 | index1   |            1 | custid      | A         |           2 |     NULL | NULL   |      | BTREE      |         |
    -> +----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+
    -> 2 rows in set (0.00 sec)
    ->
    -> mysql> desc customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+----------+------------+----------+--------------+-------------+-----------+---' at line 1
mysql> +------------+-------------+------+-----+---------+-------+
    -> | Field      | Type        | Null | Key | Default | Extra |
    -> +------------+-------------+------+-----+---------+-------+
    -> | custid     | varchar(20) | NO   | PRI | NULL    |       |
    -> | name       | varchar(50) | YES  |     | NULL    |       |
    -> | nickname   | varchar(10) | YES  |     | NULL    |       |
    -> | city       | varchar(70) | YES  |     | NULL    |       |
    -> | postalcode | varchar(10) | YES  |     | NULL    |       |
    -> | age        | int(5)      | NO   |     | NULL    |       |
    -> +------------+-------------+------+-----+---------+-------+
    -> 6 rows in set (0.26 sec)
    ->
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '+------------+-------------+------+-----+---------+-------+
| Field      | Type ' at line 1
mysql> show ables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ables' at line 1
mysql> show tables;
+----------------------+
| Tables_in_csd2204s18 |
+----------------------+
| persons              |
+----------------------+
1 row in set (0.00 sec)

mysql>