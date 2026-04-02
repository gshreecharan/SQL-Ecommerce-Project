-- VIEW 1: Customer Order Details
-- =============================

CREATE OR REPLACE VIEW customer_order_details AS
SELECT c.name, p.product_name, oi.quantity, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;


-- VIEW 2: High Value Orders
-- =============================

CREATE OR REPLACE VIEW high_value_orders AS
SELECT *
FROM orders
WHERE total_amount > 10000;