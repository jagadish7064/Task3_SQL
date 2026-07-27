Microsoft Windows [Version 10.0.26200.8894]
(c) Microsoft Corporation. All rights reserved.

C:\Users\HP>mysql --version
mysql  Ver 8.0.46 for Win64 on x86_64 (MySQL Community Server - GPL)

C:\Users\HP>mysql -u root -p
Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.46 MySQL Community Server - GPL

Copyright (c) 2000, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> CREATE DATABASE ecommerce;
Query OK, 1 row affected (0.02 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE ecommerce;
Database changed
mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| ecommerce  |
+------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE customers (
    ->     customer_id INT PRIMARY KEY,
    ->     customer_name VARCHAR(100),
    ->     city VARCHAR(50),
    ->     age INT
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> SHOW TABLES;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customers           |
+---------------------+
1 row in set (0.02 sec)

mysql> DESCRIBE customers;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | int          | NO   | PRI | NULL    |       |
| customer_name | varchar(100) | YES  |     | NULL    |       |
| city          | varchar(50)  | YES  |     | NULL    |       |
| age           | int          | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> INSERT INTO customers (customer_id, customer_name, city, age)
    -> VALUES (1, 'Rahul', 'Hyderabad', 25);
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO customers (customer_id, customer_name, city, age)
    -> VALUES
    -> (2, 'Priya', 'Chennai', 23),
    -> (3, 'Arjun', 'Bangalore', 30),
    -> (4, 'Sneha', 'Mumbai', 28),
    -> (5, 'Kiran', 'Hyderabad', 26);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> WHERE city = 'Hyderabad';
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
2 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> WHERE age > 25;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
3 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> WHERE age = 23;
+-------------+---------------+---------+------+
| customer_id | customer_name | city    | age  |
+-------------+---------------+---------+------+
|           2 | Priya         | Chennai |   23 |
+-------------+---------------+---------+------+
1 row in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> WHERE city != 'Hyderabad';
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           2 | Priya         | Chennai   |   23 |
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
+-------------+---------------+-----------+------+
3 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> ORDER BY age;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           2 | Priya         | Chennai   |   23 |
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
|           4 | Sneha         | Mumbai    |   28 |
|           3 | Arjun         | Bangalore |   30 |
+-------------+---------------+-----------+------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> ORDER BY age DESC;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
+-------------+---------------+-----------+------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> ORDER BY customer_name;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           3 | Arjun         | Bangalore |   30 |
|           5 | Kiran         | Hyderabad |   26 |
|           2 | Priya         | Chennai   |   23 |
|           1 | Rahul         | Hyderabad |   25 |
|           4 | Sneha         | Mumbai    |   28 |
+-------------+---------------+-----------+------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> WHERE city = 'Hyderabad'
    -> ORDER BY age;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO customers (customer_id, customer_name, city, age)
    -> VALUES
    -> (1, 'Rahul', 'Hyderabad', 25),
    -> (2, 'Priya', 'Chennai', 23),
    -> (3, 'Arjun', 'Bangalore', 30),
    -> (4, 'Sneha', 'Mumbai', 28),
    -> (5, 'Kiran', 'Hyderabad', 26);
ERROR 1062 (23000): Duplicate entry '1' for key 'customers.PRIMARY'
mysql> INSERT INTO customers (customer_id, customer_name, city, age)
    -> VALUES
    -> (1, 'Rahul', 'Hyderabad', 25),
    -> (2, 'Priya', 'Chennai', 23),
    -> (3, 'Arjun', 'Bangalore', 30),
    -> (4, 'Sneha', 'Mumbai', 28),
    -> (5, 'Kiran', 'Hyderabad', 26);
ERROR 1062 (23000): Duplicate entry '1' for key 'customers.PRIMARY'
mysql> SELECT * FROM customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
5 rows in set (0.00 sec)

mysql> INSERT INTO customers (customer_id, customer_name, city, age)
    -> VALUES (6, 'Anjali', 'Delhi', 24);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
|           6 | Anjali        | Delhi     |   24 |
+-------------+---------------+-----------+------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> WHERE city = 'Hyderabad';
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> WHERE age > 25;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> WHERE age < 28;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
|           5 | Kiran         | Hyderabad |   26 |
|           6 | Anjali        | Delhi     |   24 |
+-------------+---------------+-----------+------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> WHERE age = 23;
+-------------+---------------+---------+------+
| customer_id | customer_name | city    | age  |
+-------------+---------------+---------+------+
|           2 | Priya         | Chennai |   23 |
+-------------+---------------+---------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM customers
    -> ORDER BY age;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           2 | Priya         | Chennai   |   23 |
|           6 | Anjali        | Delhi     |   24 |
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
|           4 | Sneha         | Mumbai    |   28 |
|           3 | Arjun         | Bangalore |   30 |
+-------------+---------------+-----------+------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> ORDER BY age DESC;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
|           1 | Rahul         | Hyderabad |   25 |
|           6 | Anjali        | Delhi     |   24 |
|           2 | Priya         | Chennai   |   23 |
+-------------+---------------+-----------+------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> ORDER BY customer_name;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           6 | Anjali        | Delhi     |   24 |
|           3 | Arjun         | Bangalore |   30 |
|           5 | Kiran         | Hyderabad |   26 |
|           2 | Priya         | Chennai   |   23 |
|           1 | Rahul         | Hyderabad |   25 |
|           4 | Sneha         | Mumbai    |   28 |
+-------------+---------------+-----------+------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> WHERE city = 'Hyderabad'
    -> ORDER BY age;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
2 rows in set (0.00 sec)

mysql> SELECT COUNT(*)
    -> FROM customers;
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.01 sec)

mysql> SELECT AVG(age)
    -> FROM customers;
+----------+
| AVG(age) |
+----------+
|  26.0000 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT MAX(age)
    -> FROM customers;
+----------+
| MAX(age) |
+----------+
|       30 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT MIN(age)
    -> FROM customers;
+----------+
| MIN(age) |
+----------+
|       23 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT SUM(age)
    -> FROM customers;
+----------+
| SUM(age) |
+----------+
|      156 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT city,
    -> COUNT(*)
    -> FROM customers
    -> GROUP BY city;
+-----------+----------+
| city      | COUNT(*) |
+-----------+----------+
| Hyderabad |        2 |
| Chennai   |        1 |
| Bangalore |        1 |
| Mumbai    |        1 |
| Delhi     |        1 |
+-----------+----------+
5 rows in set (0.00 sec)

mysql> SELECT city,
    -> AVG(age)
    -> FROM customers
    -> GROUP BY city;
+-----------+----------+
| city      | AVG(age) |
+-----------+----------+
| Hyderabad |  25.5000 |
| Chennai   |  23.0000 |
| Bangalore |  30.0000 |
| Mumbai    |  28.0000 |
| Delhi     |  24.0000 |
+-----------+----------+
5 rows in set (0.00 sec)

mysql> SELECT city,
    -> MAX(age)
    -> FROM customers
    -> GROUP BY city;
+-----------+----------+
| city      | MAX(age) |
+-----------+----------+
| Hyderabad |       26 |
| Chennai   |       23 |
| Bangalore |       30 |
| Mumbai    |       28 |
| Delhi     |       24 |
+-----------+----------+
5 rows in set (0.01 sec)

mysql> CREATE TABLE orders (
    ->     order_id INT PRIMARY KEY,
    ->     customer_id INT,
    ->     product_name VARCHAR(100),
    ->     amount DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> SHOW TABLES;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customers           |
| orders              |
+---------------------+
2 rows in set (0.01 sec)

mysql> INSERT INTO orders
    -> (order_id, customer_id, product_name, amount)
    -> VALUES
    -> (101,1,'Laptop',50000),
    -> (102,2,'Mouse',800),
    -> (103,1,'Keyboard',1500),
    -> (104,3,'Monitor',12000),
    -> (105,5,'Headphones',2500);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM orders;
+----------+-------------+--------------+----------+
| order_id | customer_id | product_name | amount   |
+----------+-------------+--------------+----------+
|      101 |           1 | Laptop       | 50000.00 |
|      102 |           2 | Mouse        |   800.00 |
|      103 |           1 | Keyboard     |  1500.00 |
|      104 |           3 | Monitor      | 12000.00 |
|      105 |           5 | Headphones   |  2500.00 |
+----------+-------------+--------------+----------+
5 rows in set (0.00 sec)

mysql> SELECT
    -> customers.customer_name,
    -> orders.product_name,
    -> orders.amount
    -> FROM customers
    -> INNER JOIN orders
    -> ON customers.customer_id = orders.customer_id;
+---------------+--------------+----------+
| customer_name | product_name | amount   |
+---------------+--------------+----------+
| Rahul         | Laptop       | 50000.00 |
| Priya         | Mouse        |   800.00 |
| Rahul         | Keyboard     |  1500.00 |
| Arjun         | Monitor      | 12000.00 |
| Kiran         | Headphones   |  2500.00 |
+---------------+--------------+----------+
5 rows in set (0.00 sec)

mysql> INSERT INTO customers
    -> VALUES (6,'Anjali','Delhi',24);
ERROR 1062 (23000): Duplicate entry '6' for key 'customers.PRIMARY'
mysql> INSERT INTO customers
    -> VALUES (6,'Anjali','Delhi',24);
ERROR 1062 (23000): Duplicate entry '6' for key 'customers.PRIMARY'
mysql> (6, 'Anjali', 'Delhi', 24)
    -> SELECT * FROM customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '6, 'Anjali', 'Delhi', 24)
SELECT * FROM customers' at line 1
mysql> SELECT * FROM customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
|           6 | Anjali        | Delhi     |   24 |
+-------------+---------------+-----------+------+
6 rows in set (0.00 sec)

mysql> SELECT
    ->     customers.customer_name,
    ->     orders.product_name,
    ->     orders.amount
    -> FROM customers
    -> LEFT JOIN orders
    -> ON customers.customer_id = orders.customer_id;
+---------------+--------------+----------+
| customer_name | product_name | amount   |
+---------------+--------------+----------+
| Rahul         | Keyboard     |  1500.00 |
| Rahul         | Laptop       | 50000.00 |
| Priya         | Mouse        |   800.00 |
| Arjun         | Monitor      | 12000.00 |
| Sneha         | NULL         |     NULL |
| Kiran         | Headphones   |  2500.00 |
| Anjali        | NULL         |     NULL |
+---------------+--------------+----------+
7 rows in set (0.01 sec)

mysql> SELECT * FROM customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           2 | Priya         | Chennai   |   23 |
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
|           6 | Anjali        | Delhi     |   24 |
+-------------+---------------+-----------+------+
6 rows in set (0.00 sec)

mysql> SELECT customer_name, age
    -> FROM customers
    -> WHERE age >
    -> (
    ->     SELECT AVG(age)
    ->     FROM customers
    -> );
+---------------+------+
| customer_name | age  |
+---------------+------+
| Arjun         |   30 |
| Sneha         |   28 |
+---------------+------+
2 rows in set (0.00 sec)

mysql> SELECT AVG(age)
    -> FROM customers;
+----------+
| AVG(age) |
+----------+
|  26.0000 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT customer_name, age
    -> FROM customers
    -> WHERE age > 26;
+---------------+------+
| customer_name | age  |
+---------------+------+
| Arjun         |   30 |
| Sneha         |   28 |
+---------------+------+
2 rows in set (0.00 sec)

mysql> SELECT customer_name, age
    -> FROM customers
    -> WHERE age =
    -> (
    ->     SELECT MAX(age)
    ->    FROM customers
    -> );
+---------------+------+
| customer_name | age  |
+---------------+------+
| Arjun         |   30 |
+---------------+------+
1 row in set (0.00 sec)

mysql> SELECT customer_name, city
    -> FROM customers
    -> WHERE city =
    -> (
    ->     SELECT city
    ->     FROM customers
    ->     WHERE customer_name = 'Rahul'
    -> );
+---------------+-----------+
| customer_name | city      |
+---------------+-----------+
| Rahul         | Hyderabad |
| Kiran         | Hyderabad |
+---------------+-----------+
2 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> WHERE city='Hyderabad';
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
2 rows in set (0.00 sec)

mysql> CREATE VIEW Hyderabad_Customers AS
    -> SELECT *
    -> FROM customers
    -> WHERE city='Hyderabad';
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM Hyderabad_Customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
2 rows in set (0.00 sec)

mysql> CREATE VIEW Senior_Customers AS
    -> SELECT *
    -> FROM customers
    -> WHERE age > 25;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM Senior_Customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           3 | Arjun         | Bangalore |   30 |
|           4 | Sneha         | Mumbai    |   28 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Hyderabad_Customers;
+-------------+---------------+-----------+------+
| customer_id | customer_name | city      | age  |
+-------------+---------------+-----------+------+
|           1 | Rahul         | Hyderabad |   25 |
|           5 | Kiran         | Hyderabad |   26 |
+-------------+---------------+-----------+------+
2 rows in set (0.00 sec)

mysql> CREATE INDEX idx_customer
    -> ON orders(customer_id);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> SHOW INDEX
    -> FROM orders;
+--------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table  | Non_unique | Key_name     | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| orders |          0 | PRIMARY      |            1 | order_id    | A         |           5 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| orders |          1 | idx_customer |            1 | customer_id | A         |           4 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+--------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0.03 sec)

mysql>