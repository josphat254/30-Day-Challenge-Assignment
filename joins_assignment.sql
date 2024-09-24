USE ecommerce;
-- Creating the tables customers, orders, suppliers, and products
CREATE TABLE customers(
	customer_id INT PRIMARY KEY,
    customer_name VARCHAR (100),
    customer_email VARCHAR (100),
    customer_phone VARCHAR (20)
);

CREATE TABLE orders(
	order_id INT PRIMARY KEY,
    order_quantity INT,
    order_date DATE,
    customer_id INT,
    product_id INT
);

CREATE TABLE suppliers(
	supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR (100),
    supplier_email VARCHAR (100),
    supplier_phone VARCHAR (20)
);

CREATE TABLE products(
	product_id INT PRIMARY KEY,
    product_name VARCHAR (100),
    product_price DECIMAL (10, 2),
    supplier_id INT
);


-- inserting values into the customers table 
INSERT INTO customers (customer_id, customer_name, customer_email, customer_phone) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', '123-456-7890'),
(2, 'Bob Smith', 'bob.smith@example.com', '234-567-8901'),
(3, 'Charlie Brown', 'charlie.brown@example.com', '345-678-9012'),
(4, 'Diana Prince', 'diana.prince@example.com', '456-789-0123'),
(5, 'Edward Elric', 'edward.elric@example.com', '567-890-1234'),
(6, 'Fiona Apple', 'fiona.apple@example.com', '678-901-2345'),
(7, 'George Martin', 'george.martin@example.com', '789-012-3456'),
(8, 'Hannah Arendt', 'hannah.arendt@example.com', '890-123-4567'),
(9, 'Ian McKellen', 'ian.mckellen@example.com', '901-234-5678'),
(10, 'Jenna Ortega', 'jenna.ortega@example.com', '012-345-6789'),
(11, 'Kevin Spacey', 'kevin.spacey@example.com', '123-456-7891'),
(12, 'Liam Neeson', 'liam.neeson@example.com', '234-567-8902'),
(13, 'Maya Angelou', 'maya.angelou@example.com', '345-678-9013'),
(14, 'Nathan Drake', 'nathan.drake@example.com', '456-789-0124'),
(15, 'Olivia Wilde', 'olivia.wilde@example.com', '567-890-1235'),
(16, 'Peter Parker', 'peter.parker@example.com', '678-901-2346'),
(17, 'Quinn Fabray', 'quinn.fabray@example.com', '789-012-3457'),
(18, 'Ron Weasley', 'ron.weasley@example.com', '890-123-4568'),
(19, 'Steve Rogers', 'steve.rogers@example.com', '901-234-5679'),
(20, 'Tina Fey', 'tina.fey@example.com', '012-345-6780');

-- Inserting data to suppliers table
INSERT INTO suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES
(1, 'Supplier A', 'contact@supplierA.com', '111-222-3333'),
(2, 'Supplier B', 'contact@supplierB.com', '222-333-4444'),
(3, 'Supplier C', 'contact@supplierC.com', '333-444-5555'),
(4, 'Supplier D', 'contact@supplierD.com', '444-555-6666'),
(5, 'Supplier E', 'contact@supplierE.com', '555-666-7777');
-- Inserting data into products table
INSERT INTO products(product_id, product_name, product_price, supplier_id) VALUES
(1, 'iPhone 14', 999.00, 1),
(2, 'Samsung Galaxy S23', 899.00, 1),
(3, 'Google Pixel 7', 599.00, 2),
(4, 'OnePlus 11', 749.00, 2),
(5, 'Xiaomi 13', 699.00, 3),
(6, 'Sony Xperia', 199.00, 3),
(7, 'Motorola Edge 30', 649.00, 4),
(8, 'Nokia G50', 349.00, 4),
(9, 'Huawei P50 Pro', 899.00, 5),
(10, 'Oppo Find X5', 999.00, 5),
(11, 'LG Velvet', 499.00, 1),
(12, 'ASUS ROG Phone 6', 999.00, 2),
(13, 'Realme GT 2 Pro', 749.00, 3),
(14, 'Vivo X80', 799.00, 4),
(15, 'Apple iPhone SE (2022)', 429.00, 5);

-- Inserting data into orders table
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (1, 2, '2023-07-10', 1, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (2, 4, '2022-10-14', 14, 11);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (3, 4, '2020-09-28', 14, 6);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (4, 5, '2024-09-22', 8, 12);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (5, 7, '2023-06-04', 12, 10);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (6, 8, '2020-12-25', 12, 5);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (7, 5, '2023-11-24', 1, 10);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (8, 10, '2023-01-31', 3, 6);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (9, 5, '2021-02-14', 8, 14);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (10, 3, '2022-10-16', 18, 5);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (11, 4, '2024-05-02', 4, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (12, 5, '2022-09-12', 13, 9);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (13, 9, '2023-12-30', 3, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (14, 5, '2023-11-11', 6, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (15, 4, '2022-03-20', 5, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (16, 6, '2022-07-05', 4, 14);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (17, 3, '2023-12-03', 18, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (18, 8, '2024-02-07', 6, 12);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (19, 7, '2023-08-10', 13, 8);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (20, 6, '2023-07-09', 18, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (21, 9, '2024-05-03', 11, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (22, 6, '2021-05-28', 1, 12);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (23, 5, '2024-05-18', 19, 6);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (24, 9, '2024-03-17', 8, 11);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (25, 6, '2023-06-26', 17, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (26, 5, '2021-08-26', 7, 15);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (27, 1, '2024-05-19', 3, 14);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (28, 1, '2020-12-19', 2, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (29, 3, '2021-02-20', 9, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (30, 10, '2024-04-12', 6, 8);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (31, 7, '2023-10-17', 2, 14);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (32, 10, '2023-08-30', 16, 4);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (33, 6, '2022-05-24', 2, 4);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (34, 5, '2023-06-08', 5, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (35, 7, '2023-05-03', 2, 2);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (36, 1, '2023-09-13', 9, 4);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (37, 10, '2023-09-28', 14, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (38, 9, '2024-09-03', 18, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (39, 3, '2022-05-17', 8, 12);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (40, 7, '2021-05-04', 19, 12);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (41, 2, '2021-03-29', 12, 14);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (42, 7, '2022-12-30', 10, 6);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (43, 5, '2020-12-24', 18, 2);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (44, 1, '2024-04-28', 15, 11);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (45, 3, '2021-02-26', 19, 2);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (46, 1, '2021-11-16', 20, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (47, 9, '2022-06-01', 13, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (48, 5, '2024-07-09', 4, 2);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (49, 9, '2023-10-04', 3, 15);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (50, 9, '2024-04-10', 18, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (51, 2, '2022-10-17', 3, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (52, 9, '2022-08-27', 7, 9);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (53, 6, '2023-02-04', 2, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (54, 5, '2023-09-09', 11, 2);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (55, 10, '2020-12-07', 15, 5);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (56, 10, '2023-03-06', 16, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (57, 2, '2024-04-03', 6, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (58, 1, '2020-12-07', 17, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (59, 9, '2021-10-29', 8, 9);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (60, 3, '2021-01-18', 2, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (61, 5, '2021-01-08', 19, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (62, 6, '2022-01-15', 20, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (63, 3, '2024-01-22', 12, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (64, 6, '2022-06-27', 6, 10);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (65, 3, '2023-05-13', 19, 11);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (66, 10, '2024-04-05', 11, 6);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (67, 7, '2021-08-31', 13, 8);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (68, 8, '2023-09-04', 5, 10);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (69, 2, '2024-09-16', 9, 10);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (70, 2, '2021-03-19', 8, 9);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (71, 9, '2022-07-08', 3, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (72, 2, '2024-04-02', 19, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (73, 1, '2024-02-11', 19, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (74, 3, '2020-11-24', 16, 6);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (75, 2, '2022-10-12', 16, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (76, 5, '2023-12-26', 13, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (77, 5, '2021-01-28', 10, 12);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (78, 3, '2022-09-08', 10, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (79, 2, '2022-07-05', 10, 5);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (80, 3, '2021-07-25', 16, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (81, 4, '2023-04-20', 15, 15);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (82, 3, '2024-09-01', 1, 11);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (83, 1, '2023-02-12', 10, 8);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (84, 1, '2021-11-24', 4, 4);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (85, 1, '2020-12-14', 5, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (86, 4, '2022-06-05', 4, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (87, 9, '2022-11-10', 2, 14);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (88, 3, '2020-12-24', 9, 6);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (89, 3, '2020-10-22', 6, 9);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (90, 7, '2022-11-01', 14, 2);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (91, 7, '2021-09-25', 11, 13);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (92, 8, '2024-08-28', 2, 5);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (93, 10, '2021-02-03', 16, 7);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (94, 1, '2024-02-01', 5, 4);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (95, 9, '2020-10-21', 14, 3);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (96, 2, '2021-07-26', 7, 2);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (97, 9, '2021-11-21', 3, 15);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (98, 1, '2023-07-15', 20, 12);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (99, 6, '2020-10-26', 6, 1);
insert into orders (order_id, order_quantity, order_date, customer_id, product_id) values (100, 3, '2021-11-07', 17, 11);

SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM suppliers;

-- Get all products and their suppliers, even if a product has no supplier
SELECT p.product_name, s.supplier_name
FROM products AS p
LEFT JOIN suppliers AS s
ON p.supplier_id = s.supplier_id;

-- Get all orders with customer information.
SELECT c.customer_name, o.order_id, o.order_quantity 
FROM orders AS o
INNER JOIN customers AS c
USING(customer_id);

-- Get all orders per customer order in descending order
SELECT c.customer_name,  SUM(o.order_quantity) AS total_orders_per_customer
FROM customers AS c
LEFT JOIN orders AS o
USING(customer_id)
GROUP BY c.customer_name
ORDER BY total_orders_per_customer DESC;

-- Calculate revenue generated by each customers for goods ordered 
SELECT c.customer_name, sum(o.order_quantity * p.product_price) AS revenue_per_customer
FROM customers c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id
LEFT JOIN products p
ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY revenue_per_customer; 

-- orders per product
SELECT p.product_name, SUM(o.order_quantity) AS total_orders_per_product
FROM products p 
LEFT JOIN orders o 
ON p.product_id = o.product_id
GROUP BY p.product_name;

-- revenue per product, order in descending order
SELECT p.product_name, SUM(o.order_quantity * p.product_price) AS total_revenue_per_product
FROM products p 
LEFT JOIN orders o 
ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_revenue_per_product DESC
