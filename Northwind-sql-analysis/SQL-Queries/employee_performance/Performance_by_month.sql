-- =============================================
-- Filename: Performance_by_month.sql
-- Purpose: Performance By Month
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    e.employeeName,
    YEAR(o.orderDate) AS year,
    MONTH(o.orderDate) AS month,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS monthly_sales
FROM employees e
JOIN orders o ON e.employeeID = o.employeeID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY e.employeeName, YEAR(o.orderDate), MONTH(o.orderDate)
ORDER BY e.employeeName, year, month;