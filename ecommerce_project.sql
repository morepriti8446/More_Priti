CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

-- Products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order items table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Payments table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO customers VALUES
(1,'Priti More','priti@gmail.com','Pune','2023-01-10'),
(2,'Sakshi landge','sakshi@gmail.com','Mumbai','2023-02-15'),
(3,'Mauli More','mauli@gmail.com','Delhi','2023-03-20'),
(4,'Pratiksha More','pratiksha@gmail.com','Pune','2023-04-05');

INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Mobile','Electronics',25000),
(103,'Headphones','Accessories',2000),
(104,'Office Chair','Furniture',7000),
(105,'Notebook','Stationery',100);

INSERT INTO orders VALUES
(201,1,'2023-05-01','Delivered'),
(202,2,'2023-05-03','Delivered'),
(203,1,'2023-06-10','Delivered'),
(204,3,'2023-06-15','Cancelled'),
(205,4,'2023-07-01','Delivered');

INSERT INTO order_items VALUES
(1,201,101,1),
(2,201,103,2),
(3,202,102,1),
(4,203,105,5),
(5,203,104,1),
(6,205,103,3);

INSERT INTO payments VALUES
(301,201,'Credit Card','Completed',59000),
(302,202,'UPI','Completed',25000),
(303,203,'Debit Card','Completed',7500),
(304,204,'UPI','Failed',0),
(305,205,'Credit Card','Completed',6000);

SELECT SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Completed';

SELECT 
    MONTH(o.order_date) AS month,
    SUM(p.amount) AS revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status = 'Completed'
GROUP BY MONTH(o.order_date)
ORDER BY month;

SELECT 
    pr.product_name,
    SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.product_name
ORDER BY total_sold DESC
LIMIT 5;

SELECT 
    pr.category,
    SUM(oi.quantity * pr.price) AS revenue
FROM order_items oi
JOIN products pr ON oi.product_id = pr.product_id
GROUP BY pr.category;

SELECT 
    c.name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;

WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.name,
        SUM(p.amount) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN payments p ON o.order_id = p.order_id
    WHERE p.payment_status = 'Completed'
    GROUP BY c.customer_id, c.name
)
SELECT *
FROM customer_spending
ORDER BY total_spent DESC;

CREATE VIEW monthly_revenue AS
SELECT 
    MONTH(o.order_date) AS month,
    SUM(p.amount) AS revenue
FROM orders o
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status = 'Completed'
GROUP BY MONTH(o.order_date);


SELECT * FROM monthly_revenue;

SHOW TABLES;

SELECT * FROM customers;
