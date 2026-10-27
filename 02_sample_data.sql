SET DEFINE OFF;





INSERT ALL
        INTO customers VALUES (1, 'John', 'Smith', 'john.smith@gmail.com', '4105001001')
        INTO customers VALUES (2, 'Michael', 'Johnson', 'michael.johnson@example.com', '4105551002')
        INTO customers VALUES (3, 'Sarah', 'Williams', 'sarah.williams@example.com', '4105551003')
        INTO customers VALUES (4, 'David', 'Brown', 'david.brown@example.com', '4105551004')
        INTO customers VALUES (5, 'Emily', 'Davis', 'emily.davis@example.com', '4105551005')
        INTO customers VALUES (6, 'James', 'Wilson', 'james.wilson@example.com', '4105551006')
        INTO customers VALUES (7, 'Jessica', 'Moore', 'jessica.moore@example.com', '4105551007')
        INTO customers VALUES (8, 'Daniel', 'Taylor', 'daniel.taylor@example.com', '4105551008')
        INTO customers VALUES (9, 'Olivia', 'Anderson', 'olivia.anderson@example.com', '4105551009')
        INTO customers VALUES (10, 'Matthew', 'Thomas', 'matthew.thomas@example.com', '4105551010')
        INTO customers VALUES (11, 'Sophia', 'Jackson', 'sophia.jackson@example.com', '4105551011')
        INTO customers VALUES (12, 'Christopher', 'White', 'christopher.white@example.com', '4105551012')
        INTO customers VALUES (13, 'Ashley', 'Harris', 'ashley.harris@example.com', '4105551013')
        INTO customers VALUES (14, 'Andrew', 'Martin', 'andrew.martin@example.com', '4105551014')
        INTO customers VALUES (15, 'Isabella', 'Thompson', 'isabella.thompson@example.com', '4105551015')
        INTO customers VALUES (16, 'Joshua', 'Garcia', 'joshua.garcia@example.com', '4105551016')
        INTO customers VALUES (17, 'Mia', 'Martinez', 'mia.martinez@example.com', '4105551017')
        INTO customers VALUES (18, 'Ryan', 'Robinson', 'ryan.robinson@example.com', '4105551018')
        INTO customers VALUES (19, 'Charlotte', 'Clark', 'charlotte.clark@example.com', '4105551019')
        INTO customers VALUES (20, 'Nathan', 'Rodriguez', 'nathan.rodriguez@example.com', '4105551020')
        INTO customers VALUES (21, 'Amelia', 'Lewis', 'amelia.lewis@example.com', '4105551021')
        INTO customers VALUES (22, 'Brandon', 'Lee', 'brandon.lee@example.com', '4105551022')
        INTO customers VALUES (23, 'Abigail', 'Walker', 'abigail.walker@example.com', '4105551023')
        INTO customers VALUES (24, 'Tyler', 'Hall', 'tyler.hall@example.com', '4105551024')
        INTO customers VALUES (25, 'Harper', 'Allen', 'harper.allen@example.com', '4105551025')
        INTO customers VALUES (26, 'Kevin', 'Young', 'kevin.young@example.com', '4105551026')
        INTO customers VALUES (27, 'Evelyn', 'King', 'evelyn.king@example.com', '4105551027')
        INTO customers VALUES (28, 'Justin', 'Wright', 'justin.wright@example.com', '4105551028')
        INTO customers VALUES (29, 'Grace', 'Scott', 'grace.scott@example.com', '4105551029')
        INTO customers VALUES (30, 'Aaron', 'Green', 'aaron.green@example.com', '4105551030')
        INTO customers VALUES (31, 'Chloe', 'Baker', 'chloe.baker@example.com', '4105551031')
        INTO customers VALUES (32, 'Eric', 'Adams', 'eric.adams@example.com', '4105551032')
        INTO customers VALUES (33, 'Lily', 'Nelson', 'lily.nelson@example.com', '4105551033')
        INTO customers VALUES (34, 'Jason', 'Carter', 'jason.carter@example.com', '4105551034')
        INTO customers VALUES (35, 'Zoe', 'Mitchell', 'zoe.mitchell@example.com', '4105551035')
        INTO customers VALUES (36, 'Patrick', 'Perez', 'patrick.perez@example.com', '4105551036')
        INTO customers VALUES (37, 'Hannah', 'Roberts', 'hannah.roberts@example.com', '4105551037')
        INTO customers VALUES (38, 'Sean', 'Turner', 'sean.turner@example.com', '4105551038')
        INTO customers VALUES (39, 'Natalie', 'Phillips', 'natalie.phillips@example.com', '4105551039')
        INTO customers VALUES (40, 'Adam', 'Campbell', 'adam.campbell@example.com', '4105551040')
SELECT 1 FROM dual;






INSERT ALL
    INTO employees VALUES (1, 'Michael', 'Scott', 'Store Manager', DATE '2020-03-15')
    INTO employees VALUES (2, 'Jim', 'Halpert', 'Team Lead', DATE '2021-06-10')
    INTO employees VALUES (3, 'Pam', 'Beesly', 'Guest Advocate', DATE '2022-01-20')
    INTO employees VALUES (4, 'Dwight', 'Schrute', 'Inventory Specialist', DATE '2019-08-05')
    INTO employees VALUES (5, 'Stanley', 'Hudson', 'Guest Advocate', DATE '2021-11-12')
    INTO employees VALUES (6, 'Angela', 'Martin', 'Guest Services', DATE '2023-02-14')
    INTO employees VALUES (7, 'Kevin', 'Malone', 'Cashier', DATE '2022-07-18')
    INTO employees VALUES (8, 'Oscar', 'Martinez', 'Fulfillment Expert', DATE '2020-09-22')
    INTO employees VALUES (9, 'Kelly', 'Kapoor', 'Guest Advocate', DATE '2023-05-08')
    INTO employees VALUES (10, 'Ryan', 'Howard', 'Fulfillment Expert', DATE '2024-01-15')
SELECT 1 FROM dual;






INSERT ALL 
        INTO categories VALUES (1, 'Electronics')
        INTO categories VALUES (2, 'Clothing')
        INTO categories VALUES (3, 'Groceries')
        INTO categories VALUES (4, 'Home & Kitchen')
        INTO categories VALUES (5, 'Beauty & Personal Care')
        INTO categories VALUES (6, 'Toys & Games')
        INTO categories VALUES (7, 'Sports & Outdoors')
        INTO categories VALUES (8, 'Books & Entertainment')
SELECT 1 FROM dual;





INSERT INTO products
        (product_id, category_id, product_name, price, stock_quantity)
VALUES
        (1, 1, 'PlayStation 5', 499.99, 15);


INSERT ALL
    INTO products VALUES (2, 1, 'Xbox Series X', 499.99, 12)
    INTO products VALUES (3, 1, 'Apple AirPods Pro', 249.99, 30)
    INTO products VALUES (4, 1, 'Samsung 55 Inch TV', 599.99, 8)
    INTO products VALUES (5, 1, 'Nintendo Switch', 299.99, 20)

    INTO products VALUES (6, 2, 'Mens Nike Hoodie', 59.99, 35)
    INTO products VALUES (7, 2, 'Womens Leggings', 29.99, 50)
    INTO products VALUES (8, 2, 'Mens Graphic T-Shirt', 19.99, 60)
    INTO products VALUES (9, 2, 'Womens Denim Jeans', 39.99, 40)
    INTO products VALUES (10, 2, 'Athletic Shorts', 24.99, 45)

    INTO products VALUES (11, 3, 'Whole Milk 1 Gallon', 4.29, 75)
    INTO products VALUES (12, 3, 'Dozen Large Eggs', 3.99, 80)
    INTO products VALUES (13, 3, 'White Bread', 2.49, 100)
    INTO products VALUES (14, 3, 'Ground Beef 1 lb', 6.99, 55)
    INTO products VALUES (15, 3, 'Bananas 2 lb', 2.19, 90)

    INTO products VALUES (16, 4, 'Coffee Maker', 79.99, 18)
    INTO products VALUES (17, 4, 'Air Fryer', 119.99, 15)
    INTO products VALUES (18, 4, 'Bath Towel Set', 34.99, 40)
    INTO products VALUES (19, 4, 'Queen Bed Sheets', 49.99, 25)
    INTO products VALUES (20, 4, 'Desk Lamp', 24.99, 35)

    INTO products VALUES (21, 5, 'Shampoo', 8.99, 70)
    INTO products VALUES (22, 5, 'Body Wash', 7.99, 65)
    INTO products VALUES (23, 5, 'Toothpaste', 4.99, 100)
    INTO products VALUES (24, 5, 'Face Moisturizer', 14.99, 45)
    INTO products VALUES (25, 5, 'Deodorant', 6.49, 80)

    INTO products VALUES (26, 6, 'LEGO Star Wars Set', 89.99, 22)
    INTO products VALUES (27, 6, 'Barbie Doll', 24.99, 40)
    INTO products VALUES (28, 6, 'Monopoly Board Game', 19.99, 30)
    INTO products VALUES (29, 6, 'Hot Wheels 5 Pack', 9.99, 55)
    INTO products VALUES (30, 6, 'Nerf Blaster', 34.99, 25)

    INTO products VALUES (31, 7, 'Wilson Basketball', 29.99, 40)
    INTO products VALUES (32, 7, 'Yoga Mat', 19.99, 35)
    INTO products VALUES (33, 7, 'Dumbbell Set', 79.99, 20)
    INTO products VALUES (34, 7, 'Camping Chair', 34.99, 30)
    INTO products VALUES (35, 7, 'Football', 24.99, 45)

    INTO products VALUES (36, 8, 'Harry Potter Book', 14.99, 50)
    INTO products VALUES (37, 8, 'The Hunger Games Book', 12.99, 45)
    INTO products VALUES (38, 8, 'Marvel Avengers Blu-ray', 19.99, 30)
    INTO products VALUES (39, 8, 'Vinyl Record Album', 29.99, 25)
    INTO products VALUES (40, 8, 'Uno Card Game', 7.99, 60)

SELECT 1 FROM dual;





INSERT ALL
        INTO orders VALUES (1001, 1, 3, DATE '2026-09-01', 'Completed')
        INTO orders VALUES (1002, 2, 8, DATE '2026-09-02', 'Completed')
        INTO orders VALUES (1003, 3, 10, DATE '2026-09-03', 'Picked Up')
        INTO orders VALUES (1004, 4, 6, DATE '2026-09-04', 'Completed')
        INTO orders VALUES (1005, 5, 3, DATE '2026-09-05', 'Cancelled')
        INTO orders VALUES (1006, 6, 8, DATE '2026-09-06', 'Completed')
        INTO orders VALUES (1007, 7, 10, DATE '2026-09-07', 'Picked Up')
        INTO orders VALUES (1008, 8, 9, DATE '2026-09-08', 'Completed')
        INTO orders VALUES (1009, 9, 3, DATE '2026-09-09', 'Completed')
        INTO orders VALUES (1010, 10, 8, DATE '2026-09-10', 'Cancelled')
    
        INTO orders VALUES (1011, 1, 10, DATE '2026-09-11', 'Completed')
        INTO orders VALUES (1012, 3, 6, DATE '2026-09-12', 'Completed')
        INTO orders VALUES (1013, 5, 8, DATE '2026-09-13', 'Picked Up')
        INTO orders VALUES (1014, 7, 3, DATE '2026-09-14', 'Completed')
        INTO orders VALUES (1015, 11, 9, DATE '2026-09-15', 'Completed')
        INTO orders VALUES (1016, 12, 10, DATE '2026-09-16', 'Cancelled')
        INTO orders VALUES (1017, 13, 8, DATE '2026-09-17', 'Completed')
        INTO orders VALUES (1018, 14, 6, DATE '2026-09-18', 'Picked Up')
        INTO orders VALUES (1019, 15, 3, DATE '2026-09-19', 'Completed')
        INTO orders VALUES (1020, 2, 10, DATE '2026-09-20', 'Completed')
SELECT 1 FROM dual;





INSERT ALL
    INTO order_items VALUES (1001, 1, 1)
    INTO order_items VALUES (1001, 3, 2)
    INTO order_items VALUES (1001, 23, 3)

    INTO order_items VALUES (1002, 11, 2)
    INTO order_items VALUES (1002, 12, 1)

    INTO order_items VALUES (1003, 5, 1)
    INTO order_items VALUES (1003, 26, 2)
    INTO order_items VALUES (1003, 40, 3)

    INTO order_items VALUES (1004, 16, 1)
    INTO order_items VALUES (1004, 18, 2)

    INTO order_items VALUES (1005, 6, 1)
    INTO order_items VALUES (1005, 7, 2)

    INTO order_items VALUES (1006, 14, 3)
    INTO order_items VALUES (1006, 15, 2)
    INTO order_items VALUES (1006, 13, 1)

    INTO order_items VALUES (1007, 31, 1)
    INTO order_items VALUES (1007, 35, 2)

    INTO order_items VALUES (1008, 21, 3)
    INTO order_items VALUES (1008, 22, 2)
    INTO order_items VALUES (1008, 25, 1)

    INTO order_items VALUES (1009, 2, 1)
    INTO order_items VALUES (1009, 3, 1)

    INTO order_items VALUES (1010, 36, 2)
    INTO order_items VALUES (1010, 37, 1)

    INTO order_items VALUES (1011, 4, 1)
    INTO order_items VALUES (1011, 20, 2)
    INTO order_items VALUES (1011, 19, 1)

    INTO order_items VALUES (1012, 8, 3)
    INTO order_items VALUES (1012, 9, 2)

    INTO order_items VALUES (1013, 27, 1)
    INTO order_items VALUES (1013, 28, 2)
    INTO order_items VALUES (1013, 29, 3)

    INTO order_items VALUES (1014, 32, 2)
    INTO order_items VALUES (1014, 33, 1)

    INTO order_items VALUES (1015, 10, 2)
    INTO order_items VALUES (1015, 6, 1)
    INTO order_items VALUES (1015, 7, 1)

    INTO order_items VALUES (1016, 38, 2)
    INTO order_items VALUES (1016, 39, 1)

    INTO order_items VALUES (1017, 17, 1)
    INTO order_items VALUES (1017, 20, 2)

    INTO order_items VALUES (1018, 30, 1)
    INTO order_items VALUES (1018, 26, 2)
    INTO order_items VALUES (1018, 40, 1)

    INTO order_items VALUES (1019, 24, 2)
    INTO order_items VALUES (1019, 23, 3)

    INTO order_items VALUES (1020, 1, 1)
    INTO order_items VALUES (1020, 3, 1)
    INTO order_items VALUES (1020, 5, 1)
SELECT 1 FROM dual;







COMMIT;

-- =========================================
-- CONSTRAINT TESTS: RUN INDIVIDUALLY
-- Each insert below is expected to fail.
-- =========================================

/*
INSERT INTO products
    (product_id, category_id, product_name, price, stock_quantity)
VALUES
    (9999, 1, 'Constraint Test Product', -5, 10);

INSERT INTO customers
    (customer_id, first_name, last_name, email, phone)
VALUES
    (9999, NULL, 'Test', 'test@example.com', '4105559999');
*/
