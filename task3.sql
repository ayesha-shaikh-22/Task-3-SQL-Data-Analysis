-- Task 3: SQL for Data Analysis (classicmodels database)
-- Using MySQL (XAMPP/phpMyAdmin)

------------------------------------------------------
-- 1. BASIC SELECT, WHERE, ORDER BY
------------------------------------------------------

-- 1. List all customers from France
SELECT customerNumber, customerName, city
FROM customers
WHERE country = 'France'
ORDER BY customerName;

-- 2. List all products with price greater than 100
SELECT productCode, productName, buyPrice
FROM products
WHERE buyPrice > 100
ORDER BY buyPrice DESC;

-- 3. Sort customers by credit limit (high → low)
SELECT customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC;

------------------------------------------------------
-- 2. JOINS (INNER, LEFT)
------------------------------------------------------

-- 4. List all orders with customer names (INNER JOIN)
SELECT o.orderNumber, o.orderDate, c.customerName
FROM orders o
INNER JOIN customers c
    ON o.customerNumber = c.customerNumber
ORDER BY o.orderDate DESC;

-- 5. List all customers and their payments (LEFT JOIN)
SELECT c.customerName, p.amount, p.paymentDate
FROM customers c
LEFT JOIN payments p
    ON c.customerNumber = p.customerNumber
ORDER BY p.amount DESC;

-- 6. Products that were never ordered
SELECT p.productCode, p.productName
FROM products p
LEFT JOIN orderdetails o
    ON p.productCode = o.productCode
WHERE o.productCode IS NULL;

------------------------------------------------------
-- 3. GROUP BY, SUM, AVG, HAVING
------------------------------------------------------

-- 7. Total sales made by each customer
SELECT c.customerName, SUM(p.amount) AS total_spent
FROM customers c
JOIN payments p
    ON c.customerNumber = p.customerNumber
GROUP BY c.customerName
ORDER BY total_spent DESC;

-- 8. Average payment amount
SELECT AVG(amount) AS avg_payment
FROM payments;

-- 9. Customers who spent more than 100000
SELECT c.customerName, SUM(p.amount) AS total_spent
FROM customers c
JOIN payments p
    ON c.customerNumber = p.customerNumber
GROUP BY c.customerName
HAVING total_spent > 100000;

------------------------------------------------------
-- 4. SUBQUERIES
------------------------------------------------------

-- 10. Customers who have placed more than 3 orders
SELECT customerName
FROM customers
WHERE customerNumber IN (
    SELECT customerNumber
    FROM orders
    GROUP BY customerNumber
    HAVING COUNT(orderNumber) > 3
);

-- 11. Products priced higher than average price
SELECT productName, buyPrice
FROM products
WHERE buyPrice > (SELECT AVG(buyPrice) FROM products);

------------------------------------------------------
-- 5. CREATE VIEW
------------------------------------------------------

-- 12. View showing top-selling products
CREATE VIEW top_selling_products AS
SELECT p.productName, SUM(o.quantityOrdered) AS totalQuantity
FROM products p
JOIN orderdetails o
    ON p.productCode = o.productCode
GROUP BY p.productName
ORDER BY totalQuantity DESC;

-- Use the view
SELECT * FROM top_selling_products;

------------------------------------------------------
-- 6. INDEXES FOR OPTIMIZATION
------------------------------------------------------

-- 13. Index for faster customer order search
CREATE INDEX idx_orders_customer ON orders(customerNumber);

-- 14. Index for faster product lookup
CREATE INDEX idx_orderdetails_product ON orderdetails(productCode);


