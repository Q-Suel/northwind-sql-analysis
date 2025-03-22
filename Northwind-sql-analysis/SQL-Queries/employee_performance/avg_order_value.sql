-- =============================================
-- Filename: avg_order_value.sql
-- Purpose: Avg Order Value
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    e.employeeName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)) / COUNT(DISTINCT o.orderID), 2) AS avg_order_value
FROM employees e
JOIN orders o ON e.employeeID = o.employeeID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY e.employeeName
ORDER BY avg_order_value DESC;