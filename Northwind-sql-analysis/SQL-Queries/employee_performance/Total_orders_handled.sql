-- =============================================
-- Filename: Total_orders_handled.sql
-- Purpose: Total Orders Handled
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    e.employeeName,
    COUNT(o.orderID) AS total_orders
FROM employees e
JOIN orders o ON e.employeeID = o.employeeID
GROUP BY e.employeeName
ORDER BY total_orders DESC;