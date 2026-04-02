-- =============================
-- BASIC SELECT
-- =============================

SELECT * FROM customers;
SELECT name, city FROM customers;

-- =============================
-- WHERE (Filtering)
-- =============================

SELECT * FROM customers WHERE city = 'Hyderabad';
SELECT * FROM products WHERE price > 20000;

-- =============================
-- ORDER BY (Sorting)
-- =============================

SELECT * FROM products ORDER BY price;
SELECT * FROM products ORDER BY price DESC;

-- =============================
-- GROUP BY (Aggregation)
-- =============================

SELECT city, COUNT(*) FROM customers GROUP BY city;
SELECT customer_id, SUM(total_amount) FROM orders GROUP BY customer_id;

-- =============================
-- HAVING (Filter groups)
-- =============================

SELECT customer_id, SUM(total_amount)
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 10000;

-- =============================
-- JOINS
-- =============================

-- Customers with orders
SELECT c.name, o.order_id, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- Full order details
SELECT c.name, p.product_name, oi.quantity, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- =============================
-- SUBQUERIES
-- =============================

-- Customers who placed orders
SELECT name FROM customers
WHERE customer_id IN (SELECT customer_id FROM orders);

-- Products above average price
SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- =============================
-- WINDOW FUNCTIONS
-- =============================

SELECT name,
ROW_NUMBER() OVER (ORDER BY name) AS row_num
FROM customers;

SELECT product_name, price,
RANK() OVER (ORDER BY price DESC) AS rank
FROM products;