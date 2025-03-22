-- =============================================
-- Filename: total_employee_revenue.sql
-- Purpose: Total Employee Revenue
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    e.employeeName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS total_revenue
FROM employees e
JOIN orders o ON e.employeeID = o.employeeID
JOIN order_details od ON o.orderID = od.orderID
GROUP BY e.employeeName
ORDER BY total_revenue DESC;