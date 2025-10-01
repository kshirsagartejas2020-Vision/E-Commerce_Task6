USE EcommerceDB;
GO

------------------------------------------------------------
-- 1. Simple Subquery (Scalar Subquery)
------------------------------------------------------------
-- Get customers who placed at least one order
SELECT first_name, last_name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id 
    FROM Orders
);

------------------------------------------------------------
-- 2. Subquery in WHERE with comparison
------------------------------------------------------------
-- Find products more expensive than the average price
SELECT product_name, price
FROM Products
WHERE price > (
    SELECT AVG(price) 
    FROM Products
);

------------------------------------------------------------
-- 3. Correlated Subquery
------------------------------------------------------------
-- Find customers who spent more than 5000 in total
SELECT c.customer_id, c.first_name, c.last_name
FROM Customers c
WHERE (
    SELECT SUM(o.total_amount) 
    FROM Orders o
    WHERE o.customer_id = c.customer_id
) > 5000;

------------------------------------------------------------
-- 4. Subquery with EXISTS
------------------------------------------------------------
-- Customers who have at least one delivered order
SELECT first_name, last_name
FROM Customers c
WHERE EXISTS (
    SELECT 1 
    FROM Orders o
    WHERE o.customer_id = c.customer_id
      AND o.status = 'Delivered'
);

------------------------------------------------------------
-- 5. Subquery in SELECT
------------------------------------------------------------
-- Show customer name and total orders they placed
SELECT c.first_name, c.last_name,
       (SELECT COUNT(*) 
        FROM Orders o
        WHERE o.customer_id = c.customer_id) AS TotalOrders
FROM Customers c;

------------------------------------------------------------
-- 6. Derived Table (Subquery in FROM)
------------------------------------------------------------
-- Find top 3 most sold products using subquery in FROM
SELECT TOP 3 p.product_name, sales.TotalSold
FROM (
    SELECT oi.product_id, SUM(oi.quantity) AS TotalSold
    FROM OrderItems oi
    GROUP BY oi.product_id
) sales
JOIN Products p ON p.product_id = sales.product_id
ORDER BY sales.TotalSold DESC;
