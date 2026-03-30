--CUSTOMERS DATA

INSERT INTO customers 
VALUES (1, 'Charan', 'charan@gmail.com', '9876543210', 'Hyderabad', SYSDATE);

INSERT INTO customers 
VALUES (2, 'Varun', 'varun@gmail.com', '9876798565', 'Bangalore', SYSDATE);

INSERT INTO customers 
VALUES (3, 'Mahesh', 'mahesh@gmail.com', '9876543545', 'Chennai', SYSDATE);

INSERT INTO customers 
VALUES (4, 'Prabhas', 'prabhas@gmail.com', '4974895365', 'Hyderabad', SYSDATE);

COMMIT;

--PRODUCTS DATA

INSERT INTO products 
VALUES (1, 'iPhone 14', 70000, 'Electronics', 10, SYSDATE);

INSERT INTO products
VALUES(2, 'USPA', 1500, 'Shoes', 20, SYSDATE);

INSERT INTO products 
VALUES (3, 'SAMSUNG-AC', 40000, 'Electronics', 1, SYSDATE);

INSERT INTO products 
VALUES (4, 'iPhone 14', 70000, 'Electronics', 10, SYSDATE);

COMMIT;

--ORDER DATA

INSERT INTO orders 
VALUES (1, 1, SYSDATE, 85000);

INSERT INTO orders 
VALUES (2, 2, SYSDATE, 15000);

INSERT INTO orders 
VALUES (3, 3, SYSDATE, 1500);

INSERT INTO orders 
VALUES (4, 4, SYSDATE, 5000);

COMMIT;

--ORDER_ITEMS

INSERT INTO order_items 
VALUES (1, 1, 1, 2, 70000);

INSERT INTO order_items 
VALUES (2, 2, 2, 4, 15000);

INSERT INTO order_items 
VALUES (3, 3, 3, 3, 45000);

INSERT INTO order_items 
VALUES (4, 4, 4, 2, 100000);

COMMIT;