
-- CUSTOMERS TABLE

CREATE TABLE customers (
    customer_id NUMBER(5) PRIMARY KEY,
    name VARCHAR2(100),
    email VARCHAR2(100) UNIQUE,
    phone_no VARCHAR2(15),
    city VARCHAR2(50),
    created_at DATE DEFAULT SYSDATE
);

-- PRODUCTS TABLE

CREATE TABLE products (
    product_id NUMBER(5) PRIMARY KEY,
    product_name VARCHAR2(100),
    price NUMBER(10,2),
    category VARCHAR2(100),
    stock_quantity NUMBER(5),
    created_at DATE DEFAULT SYSDATE
);

-- ORDERS TABLE

CREATE TABLE orders (
    order_id NUMBER(5) PRIMARY KEY,
    customer_id NUMBER(5),
    order_date DATE,
    total_amount NUMBER(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER ITEMS

CREATE TABLE order_items (
    order_item_id NUMBER(5) PRIMARY KEY,
    order_id NUMBER(5),
    product_id NUMBER(5),
    quantity NUMBER(5),
    price NUMBER(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);