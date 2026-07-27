# Task 3 - SQL for Data Analysis

## 📌 Objective
The objective of this task is to learn and practice SQL for data analysis by creating a database, managing tables, performing queries, and using advanced SQL concepts such as joins, subqueries, views, and indexes.

---

## 🛠 Tools Used

- MySQL Community Server 8.0
- MySQL Command Line Client
- Windows 11
- Git & GitHub

---

## 📂 Database Used

**Database Name:** `ecommerce`

---

## 📋 Tasks Performed

### 1. Created Database

```sql
CREATE DATABASE ecommerce;
USE ecommerce;
```

---

### 2. Created Customers Table

```sql
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    age INT
);
```

---

### 3. Inserted Customer Records

```sql
INSERT INTO customers VALUES
(1,'Rahul','Hyderabad',25),
(2,'Priya','Chennai',23),
(3,'Arjun','Bangalore',30),
(4,'Sneha','Mumbai',28),
(5,'Kiran','Hyderabad',26),
(6,'Anjali','Delhi',24);
```

---

### 4. Created Orders Table

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10,2)
);
```

---

### 5. Inserted Order Records

```sql
INSERT INTO orders VALUES
(101,1,'Laptop',50000),
(102,2,'Mouse',800),
(103,1,'Keyboard',1500),
(104,3,'Monitor',12000),
(105,5,'Headphones',2500);
```

---

## SQL Operations Performed

### ✔ SELECT

Displayed all records from the table.

```sql
SELECT * FROM customers;
```

---

### ✔ WHERE Clause

Filtered customers based on city and age.

Example:

```sql
SELECT * FROM customers
WHERE city='Hyderabad';
```

---

### ✔ ORDER BY

Sorted records in ascending and descending order.

Example:

```sql
SELECT * FROM customers
ORDER BY age DESC;
```

---

### ✔ Aggregate Functions

Performed:

- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

Example:

```sql
SELECT AVG(age)
FROM customers;
```

---

### ✔ GROUP BY

Grouped customer records based on city.

Example:

```sql
SELECT city,COUNT(*)
FROM customers
GROUP BY city;
```

---

### ✔ INNER JOIN

Combined customer and order details.

```sql
SELECT
customers.customer_name,
orders.product_name,
orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id=orders.customer_id;
```

---

### ✔ LEFT JOIN

Displayed all customers including those without orders.

```sql
SELECT
customers.customer_name,
orders.product_name,
orders.amount
FROM customers
LEFT JOIN orders
ON customers.customer_id=orders.customer_id;
```

---

### ✔ Subqueries

Retrieved customers older than the average age.

```sql
SELECT customer_name,age
FROM customers
WHERE age>(
SELECT AVG(age)
FROM customers
);
```

---

### ✔ Views

Created reusable SQL views.

```sql
CREATE VIEW Hyderabad_Customers AS
SELECT *
FROM customers
WHERE city='Hyderabad';
```

---

### ✔ Indexes

Created an index for faster query execution.

```sql
CREATE INDEX idx_customer
ON orders(customer_id);
```

---

## 📸 Screenshots Included

- Database Creation
- Table Creation
- Insert Data
- SELECT Queries
- WHERE Clause
- ORDER BY
- Aggregate Functions
- GROUP BY
- INNER JOIN
- LEFT JOIN
- Subqueries
- Views
- Index Creation

---

## 📁 Repository Structure

```
Task3_SQL/
│
├── README.md
├── queries.sql
├── screenshots/
│   ├── database_creation.png
│   ├── customers_table.png
│   ├── insert_customers.png
│   ├── select_query.png
│   ├── where_clause.png
│   ├── order_by.png
│   ├── aggregate_functions.png
│   ├── group_by.png
│   ├── inner_join.png
│   ├── left_join.png
│   ├── subquery.png
│   ├── view.png
│   └── index.png
```

---

## 🎯 Learning Outcomes

By completing this task, I learned:

- Creating and managing databases.
- Creating tables with primary keys.
- Inserting and retrieving data.
- Filtering and sorting records.
- Using aggregate functions.
- Grouping data using GROUP BY.
- Combining tables using JOINs.
- Writing subqueries.
- Creating SQL views.
- Improving query performance using indexes.

---

## 👨‍💻 Author

**Jagadish Eshwar**

B.Tech (Electronics and Communication Engineering)

GitHub: https://github.com/jagadish7064

---

## ⭐ Conclusion

This task provided hands-on experience with SQL fundamentals and advanced querying techniques. It improved my understanding of relational databases, data retrieval, joins, subqueries, views, and query optimization using indexes. These skills are essential for data analysis and database management.
