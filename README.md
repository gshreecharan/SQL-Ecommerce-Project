# SQL E-Commerce Database Project

## 📌 Project Overview

This project is a complete SQL-based e-commerce database system. It simulates how an online shopping platform manages customers, products, orders, and sales.

---

## 🧱 Database Design

The project includes the following tables:

- Customers
- Products
- Orders
- Order_Items

---

## 🔗 Relationships

- One-to-Many: Customers → Orders
- One-to-Many: Orders → Order_Items
- One-to-Many: Products → Order_Items
- Many-to-Many: Orders ↔ Products (via Order_Items)

---

## 🔐 Constraints Used

- Primary Keys
- Unique Constraint (Email)
- Foreign Keys

---

## 📊 SQL Features Implemented

### 🔹 Data Retrieval & Filtering

- SELECT, WHERE, ORDER BY

### 🔹 Data Aggregation

- GROUP BY, HAVING
- COUNT, SUM, AVG

### 🔹 Joins

- INNER JOIN
- LEFT JOIN

### 🔹 Advanced SQL

- Subqueries
- Window Functions (ROW_NUMBER, RANK)

---

## 👁️ Views (Reusable Queries) 🔥

- `customer_order_details` → Combines customers, orders, products, and order items
- `high_value_orders` → Filters orders with high transaction values

👉 Views are used to simplify complex queries and enable reusable reporting.

---

## ⚙️ Stored Procedures

- `get_customer_orders` → Retrieves orders for a given customer using PL/SQL

---

## 🔄 Triggers

- `update_stock` → Automatically reduces product stock after an order is placed

---

## 💡 Sample Use Cases

- Retrieve customer order history
- Analyze total sales per customer
- Identify top-selling products
- Track high-value transactions

---

## 🚀 Technologies Used

- Oracle SQL (SQL\*Plus)
- Git & GitHub

---

## 📁 Project Structure

- 01_create_tables.sql → Table creation
- 02_insert_data.sql → Data insertion
- 03_queries.sql → SQL queries (SELECT, JOIN, GROUP BY, etc.)
- 04_procedures.sql → Stored procedures
- 05_triggers.sql → Triggers
- 06_views.sql → Views

---

## 🎯 Conclusion

This project demonstrates strong SQL skills including database design, data analysis, query optimization, and advanced SQL features used in real-world applications.
