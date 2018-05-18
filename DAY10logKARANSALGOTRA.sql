MariaDB [csd2204s18]> desc departments;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| DEPARTMENT_ID   | decimal(4,0) | NO   | PRI | 0       |       |
| DEPARTMENT_NAME | varchar(30)  | NO   |     | NULL    |       |
| MANAGER_ID      | decimal(6,0) | YES  | MUL | NULL    |       |
| LOCATION_ID     | decimal(4,0) | YES  | MUL | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name ()select department_name from departments d where d.department_id = e.department_id) from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name, last_name (select department_name from departments d where d.department_id = e.department_id) from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name, last_name (select department_name from departments d where d.department_id = e.department_id) from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name, last_name (select department_name from departments d where d.department_id = e.department_id) "DEPARTMENT NAME" from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name, last_name (select department_name from departments d where d.department_id = e.department_id) "DEPARTMENT NAME" from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name, last_name (select department_name from departments d where d.department_id = e.department_id) "DEPARTMENT NAME" from employees e;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select department_name from departments d where d.department_id = e.department_i' at line 1
MariaDB [csd2204s18]> select first_name, last_name. (select department_name from departments d where d.department_id = e.department_id) "DEPARTMENT NAME" from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '(select department_name from departments d where d.department_id = e.department_' at line 1
MariaDB [csd2204s18]> select first_name, last_name, (select department_name from departments d where d.department_id = e.department_id) "DEPARTMENT NAME" from employees;
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [csd2204s18]> desc employees;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| EMPLOYEE_ID    | decimal(6,0) | NO   | PRI | 0       |       |
| FIRST_NAME     | varchar(20)  | YES  |     | NULL    |       |
| LAST_NAME      | varchar(25)  | NO   | MUL | NULL    |       |
| EMAIL          | varchar(25)  | NO   | UNI | NULL    |       |
| PHONE_NUMBER   | varchar(20)  | YES  |     | NULL    |       |
| HIRE_DATE      | date         | NO   |     | NULL    |       |
| JOB_ID         | varchar(10)  | NO   | MUL | NULL    |       |
| SALARY         | decimal(8,2) | YES  |     | NULL    |       |
| COMMISSION_PCT | decimal(2,2) | YES  |     | NULL    |       |
| MANAGER_ID     | decimal(6,0) | YES  | MUL | NULL    |       |
| DEPARTMENT_ID  | decimal(4,0) | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
11 rows in set (0.00 sec)

MariaDB [csd2204s18]> select first_name, last_name, (select department_name from departments d where d.department_id = e.department_id) "DEPARTMENT NAME" from employees e;
+-------------+-------------+------------------+
| first_name  | last_name   | DEPARTMENT NAME  |
+-------------+-------------+------------------+
| Steven      | King        | Executive        |
| Neena       | Kochhar     | Executive        |
| Lex         | De Haan     | Executive        |
| Alexander   | Hunold      | IT               |
| Bruce       | Ernst       | IT               |
| David       | Austin      | IT               |
| Valli       | Pataballa   | IT               |
| Diana       | Lorentz     | IT               |
| Nancy       | Greenberg   | Finance          |
| Daniel      | Faviet      | Finance          |
| John        | Chen        | Finance          |
| Ismael      | Sciarra     | Finance          |
| Jose Manuel | Urman       | Finance          |
| Luis        | Popp        | Finance          |
| Den         | Raphaely    | Purchasing       |
| Alexander   | Khoo        | Purchasing       |
| Shelli      | Baida       | Purchasing       |
| Sigal       | Tobias      | Purchasing       |
| Guy         | Himuro      | Purchasing       |
| Karen       | Colmenares  | Purchasing       |
| Matthew     | Weiss       | Shipping         |
| Adam        | Fripp       | Shipping         |
| Payam       | Kaufling    | Shipping         |
| Shanta      | Vollman     | Shipping         |
| Kevin       | Mourgos     | Shipping         |
| Julia       | Nayer       | Shipping         |
| Irene       | Mikkilineni | Shipping         |
| James       | Landry      | Shipping         |
| Steven      | Markle      | Shipping         |
| Laura       | Bissot      | Shipping         |
| Mozhe       | Atkinson    | Shipping         |
| James       | Marlow      | Shipping         |
| TJ          | Olson       | Shipping         |
| Jason       | Mallin      | Shipping         |
| Michael     | Rogers      | Shipping         |
| Ki          | Gee         | Shipping         |
| Hazel       | Philtanker  | Shipping         |
| Renske      | Ladwig      | Shipping         |
| Stephen     | Stiles      | Shipping         |
| John        | Seo         | Shipping         |
| Joshua      | Patel       | Shipping         |
| Trenna      | Rajs        | Shipping         |
| Curtis      | Davies      | Shipping         |
| Randall     | Matos       | Shipping         |
| Peter       | Vargas      | Shipping         |
| John        | Russell     | Sales            |
| Karen       | Partners    | Sales            |
| Alberto     | Errazuriz   | Sales            |
| Gerald      | Cambrault   | Sales            |
| Eleni       | Zlotkey     | Sales            |
| Peter       | Tucker      | Sales            |
| David       | Bernstein   | Sales            |
| Peter       | Hall        | Sales            |
| Christopher | Olsen       | Sales            |
| Nanette     | Cambrault   | Sales            |
| Oliver      | Tuvault     | Sales            |
| Janette     | King        | Sales            |
| Patrick     | Sully       | Sales            |
| Allan       | McEwen      | Sales            |
| Lindsey     | Smith       | Sales            |
| Louise      | Doran       | Sales            |
| Sarath      | Sewall      | Sales            |
| Clara       | Vishney     | Sales            |
| Danielle    | Greene      | Sales            |
| Mattea      | Marvins     | Sales            |
| David       | Lee         | Sales            |
| Sundar      | Ande        | Sales            |
| Amit        | Banda       | Sales            |
| Lisa        | Ozer        | Sales            |
| Harrison    | Bloom       | Sales            |
| Tayler      | Fox         | Sales            |
| William     | Smith       | Sales            |
| Elizabeth   | Bates       | Sales            |
| Sundita     | Kumar       | Sales            |
| Ellen       | Abel        | Sales            |
| Alyssa      | Hutton      | Sales            |
| Jonathon    | Taylor      | Sales            |
| Jack        | Livingston  | Sales            |
| Kimberely   | Grant       | NULL             |
| Charles     | Johnson     | Sales            |
| Winston     | Taylor      | Shipping         |
| Jean        | Fleaur      | Shipping         |
| Martha      | Sullivan    | Shipping         |
| Girard      | Geoni       | Shipping         |
| Nandita     | Sarchand    | Shipping         |
| Alexis      | Bull        | Shipping         |
| Julia       | Dellinger   | Shipping         |
| Anthony     | Cabrio      | Shipping         |
| Kelly       | Chung       | Shipping         |
| Jennifer    | Dilly       | Shipping         |
| Timothy     | Gates       | Shipping         |
| Randall     | Perkins     | Shipping         |
| Sarah       | Bell        | Shipping         |
| Britney     | Everett     | Shipping         |
| Samuel      | McCain      | Shipping         |
| Vance       | Jones       | Shipping         |
| Alana       | Walsh       | Shipping         |
| Kevin       | Feeney      | Shipping         |
| Donald      | OConnell    | Shipping         |
| Douglas     | Grant       | Shipping         |
| Jennifer    | Whalen      | Administration   |
| Michael     | Hartstein   | Marketing        |
| Pat         | Fay         | Marketing        |
| Susan       | Mavris      | Human Resources  |
| Hermann     | Baer        | Public Relations |
| Shelley     | Higgins     | Accounting       |
| William     | Gietz       | Accounting       |
+-------------+-------------+------------------+
107 rows in set (0.06 sec)

MariaDB [csd2204s18]> select AVG(salary), department_id from employyes group by department_id;
ERROR 1146 (42S02): Table 'csd2204s18.employyes' doesn't exist
MariaDB [csd2204s18]> select AVG(salary), department_id from employees group by department_id;
+--------------+---------------+
| AVG(salary)  | department_id |
+--------------+---------------+
|  7000.000000 |             0 |
|  4400.000000 |            10 |
|  9500.000000 |            20 |
|  4150.000000 |            30 |
|  6500.000000 |            40 |
|  3475.555556 |            50 |
|  5760.000000 |            60 |
| 10000.000000 |            70 |
|  8955.882353 |            80 |
| 19333.333333 |            90 |
|  8600.000000 |           100 |
| 10150.000000 |           110 |
+--------------+---------------+
12 rows in set (0.03 sec)

MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salart > (select avg(salary) from employees e2 where e.department_id=e2.department_id group by department_id);
ERROR 1054 (42S22): Unknown column 'salart' in 'where clause'
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary > (select avg(salary) from employees e2 where e.department_id=e2.department_id group by department_id);
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary > (select avg(salary) from employees e2 where e.department_id=e2.department_id group by department_id);
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [csd2204s18]> select first_name, last_name, salary from employees where salary > (select avg(salary) from employees e2 where e.department_id=e2.department_id group by department_id);
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [csd2204s18]> select DISTINCT(salary) from employees e1
    -> where 5 = (select count(distinct salary)
    -> from employees e2
    -> where e2.salary >= e.salary);
ERROR 1054 (42S22): Unknown column 'e.salary' in 'where clause'
MariaDB [csd2204s18]> select DISTINCT(salary) from employees e1
    -> where 5 = (select count(distinct salary)
    -> from employees e2
    -> where e2.salary >= e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s18]> select DISTINCT(salary) from employees order by salary LIMIT 3;
+---------+
| salary  |
+---------+
| 2100.00 |
| 2200.00 |
| 2400.00 |
+---------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> 
MariaDB [csd2204s18]> select DISTINCT(salary) from employees order by salary DESC LIMIT 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [csd2204s18]> exit
