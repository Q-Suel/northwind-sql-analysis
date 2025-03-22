-- =============================================
-- Filename: total_sales_by_month.sql
-- Purpose: Total Sales By Month
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    YEAR(orderDate) AS year,
    MONTH(orderDate) AS month,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS total_sales
FROM orders o
JOIN order_details od ON o.orderID = od.orderID
GROUP BY YEAR(orderDate), MONTH(orderDate)
ORDER BY year, month;