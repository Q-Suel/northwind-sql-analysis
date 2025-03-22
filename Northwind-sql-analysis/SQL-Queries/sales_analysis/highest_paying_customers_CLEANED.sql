-- =============================================
-- Filename: highest_paying_customers.sql
-- Purpose: Highest Paying Customers
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    c.companyName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS total_spent
FROM orders o
JOIN customers c ON o.customerID = c.customerID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY c.companyName
ORDER BY total_spent DESC
LIMIT 5;