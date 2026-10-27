

-- =========================================
-- QUERY 1: LOW INVENTORY & PRICE FILTERING
-- =========================================
-- Find products costing less than $50
-- with fewer than 40 units in stock.

SELECT product_name, price, stock_quantity
FROM products
WHERE price < 50 AND stock_quantity < 40;





-- =========================================
-- QUERY 2: ORDER STATUS FILTERING
-- =========================================
-- Show orders that are either 'Cancelled'
-- or 'Picked Up', sorted by order date
-- from newest to oldest.

SELECT order_id, customer_id, order_date, order_status
FROM orders
WHERE order_status = 'Cancelled'
    OR order_status = 'Picked Up'
ORDER BY order_date DESC;





-- =========================================
-- QUERY 3: LOW STOCK INVENTORY
-- =========================================
-- Display products with 20 or fewer units
-- remaining in stock, sorted from lowest
-- stock quantity to highest.

SELECT product_name, stock_quantity, price
FROM products
WHERE stock_quantity <= 20
ORDER BY stock_quantity ASC;





-- =========================================
-- QUERY 4: AVERAGE PRODUCT PRICE
-- =========================================
-- Calculate the average price of all products
-- and round the result to two decimal places.

SELECT ROUND(AVG(price), 2) AS average_price
FROM products;





-- =========================================
-- QUERY 5: TOTAL INVENTORY VALUE
-- =========================================
-- Calculate the total dollar value of all
-- products currently in stock by multiplying
-- each product's price by its stock quantity.

SELECT SUM(price * stock_quantity) AS total_inventory_value
FROM products;





-- =========================================
-- QUERY 6: ORDERS BY STATUS
-- =========================================
-- Count the total number of orders for
-- each order status using GROUP BY.

SELECT order_status, COUNT(*) AS total_orders
FROM orders
GROUP BY order_status;





-- =========================================
-- QUERY 7: PRODUCTS PER CATEGORY
-- =========================================
-- Count the total number of different products
-- in each category using GROUP BY.

SELECT category_id, COUNT(*) AS total_products
FROM products
GROUP BY category_id
ORDER BY category_id;





-- =========================================
-- QUERY 8: PRODUCTS AND THEIR CATEGORIES
-- =========================================
-- Display each product's name alongside
-- its category name by joining the products
-- and categories tables using category_id.

SELECT c.category_name, p.product_name
FROM products p
INNER JOIN categories c
    ON p.category_id = c.category_id;





-- =========================================
-- QUERY 9: ORDERS AND ASSIGNED EMPLOYEES
-- =========================================
-- Display each order's ID alongside the
-- assigned employee's first and last name.
-- Sort by order ID from lowest to highest.

SELECT o.order_id, e.first_name, e.last_name
FROM orders o
INNER JOIN employees e
    ON o.employee_id = e.employee_id
ORDER BY o.order_id ASC;





-- =========================================
-- QUERY 10: CUSTOMERS AND THEIR ORDERS
-- =========================================
-- Display every customer's ID and first name
-- alongside their order IDs, including
-- customers who have never placed an order.
-- Use a LEFT JOIN on customer_id.

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id;





-- =========================================
-- QUERY 11: ORDER PRODUCT DETAILS
-- =========================================
-- Display each order's ID, product names,
-- quantities ordered, and current product
-- prices by joining orders, order_items,
-- and products. Sort by order ID from
-- lowest to highest.

SELECT o.order_id, p.product_name, oi.quantity, p.price
FROM orders o
INNER JOIN order_items oi
    ON o.order_id = oi.order_id
INNER JOIN products p 
    ON p.product_id = oi.product_id
ORDER BY o.order_id ASC; 





-- =========================================
-- QUERY 12: PRODUCTS NEVER ORDERED
-- =========================================
-- Display the product ID and product name
-- for products that have never appeared
-- in an order. Use a LEFT JOIN and IS NULL
-- to identify products without order items.

SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN order_items oi
    ON oi.product_id = p.product_id
WHERE oi.order_id IS NULL;





-- =========================================
-- QUERY 13: CUSTOMERS WITH MULTIPLE ORDERS
-- =========================================
-- Display the customer ID and total number
-- of orders for customers who have placed
-- more than one order. Use GROUP BY and
-- HAVING to filter by order count.

SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;





-- =========================================
-- QUERY 14: PRODUCTS PRICED ABOVE AVERAGE
-- =========================================
-- Display product names and prices for
-- products costing more than the average
-- product price. Use a subquery and sort
-- by price from highest to lowest.
SELECT product_name, price
FROM products
WHERE price > (
        SELECT AVG(price)
        FROM products
)
ORDER BY price DESC;





-- =========================================
-- QUERY 15: PRODUCT STOCK STATUS
-- =========================================
-- Display each product's name, stock quantity,
-- and a stock-status label using CASE:
-- Low Stock for 20 or fewer units,
-- Moderate Stock for 21–50 units,
-- and High Stock for more than 50 units.
SELECT product_name, stock_quantity,
        CASE
                WHEN stock_quantity <= 20 THEN 'Low Stock'
                WHEN stock_quantity <= 50 THEN 'Moderate Stock'
                ELSE 'High Stock'
        END AS stock_status
FROM products;





-- =========================================
-- QUERY 16: MONTHLY ORDER COUNTS
-- =========================================
-- Count orders placed each month and display
-- the results from oldest month to newest.

SELECT TO_CHAR(order_date, 'YYYY-MM') AS order_month,
       COUNT(*) AS total_orders
FROM orders
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY order_month ASC;







-- =========================================
-- QUERY 17: PRODUCTS RANKED BY UNITS ORDERED
-- =========================================
-- Calculate total units ordered per product,
-- excluding cancelled orders, and rank products
-- from highest to lowest quantity ordered.
-- Give products with equal totals the same rank.

SELECT p.product_id,
       p.product_name,
       SUM(oi.quantity) AS total_units_ordered,
       DENSE_RANK() OVER (
           ORDER BY SUM(oi.quantity) DESC
       ) AS quantity_rank
FROM products p
INNER JOIN order_items oi
    ON p.product_id = oi.product_id
INNER JOIN orders o
    ON oi.order_id = o.order_id
WHERE o.order_status <> 'Cancelled'
GROUP BY p.product_id, p.product_name
ORDER BY quantity_rank ASC, p.product_id ASC;
