CREATE TABLE customers  (
        customer_id NUMBER PRIMARY KEY,
        first_name VARCHAR2(50),
        last_name VARCHAR2(50),
        email VARCHAR2(100),
        phone VARCHAR2(20)
);



CREATE TABLE employees  (
        employee_id NUMBER PRIMARY KEY,
        first_name VARCHAR2(50),
        last_name VARCHAR2(50),
        job_title VARCHAR2(50),
        hire_date DATE
);



CREATE TABLE categories  (
        category_id NUMBER PRIMARY KEY,
        category_name VARCHAR2(100)
);



CREATE TABLE products  (
        product_id NUMBER PRIMARY KEY,
        category_id NUMBER REFERENCES categories(category_id),
        product_name VARCHAR2(100),
        price NUMBER(10, 2),
        stock_quantity NUMBER
);



CREATE TABLE orders  (
        order_id NUMBER PRIMARY KEY,
        customer_id NUMBER REFERENCES customers(customer_id),
        employee_id NUMBER REFERENCES employees(employee_id),
        order_date DATE,
        order_status VARCHAR2(50)
);



CREATE TABLE order_items  (
        order_id NUMBER REFERENCES orders(order_id),
        product_id NUMBER REFERENCES products(product_id),
        quantity NUMBER NOT NULL,
        PRIMARY KEY (order_id, product_id)
);
















-- =========================================
-- ADDITIONAL DATA CONSTRAINTS
-- =========================================

ALTER TABLE products
ADD CONSTRAINT chk_product_price
CHECK (price >= 0);



ALTER TABLE products
ADD CONSTRAINT chk_product_stock
CHECK (stock_quantity >= 0);




ALTER TABLE products
MODIFY (price NOT NULL);



ALTER TABLE products
MODIFY (stock_quantity NOT NULL);



ALTER TABLE products
ADD CONSTRAINT chk_stock_whole_number
CHECK (stock_quantity = TRUNC(stock_quantity));



ALTER TABLE products
MODIFY (product_name NOT NULL);



ALTER TABLE products
MODIFY (category_id NOT NULL);



ALTER TABLE order_items
ADD CONSTRAINT chk_order_items_quantity
CHECK (quantity > 0 AND quantity = TRUNC(quantity));



ALTER TABLE orders
ADD CONSTRAINT chk_order_status
CHECK (order_status IN ('Completed', 'Cancelled', 'Picked Up'));



ALTER TABLE orders
MODIFY (order_status NOT NULL);



ALTER TABLE orders
MODIFY (order_date NOT NULL);



ALTER TABLE orders
MODIFY (customer_id NOT NULL);



ALTER TABLE categories
MODIFY (category_name NOT NULL);



ALTER TABLE customers
MODIFY (first_name NOT NULL, last_name NOT NULL);



ALTER TABLE employees
MODIFY (first_name NOT NULL, last_name NOT NULL);









        