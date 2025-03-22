-- =============================================
-- Filename: Best_selling_products.sql
-- Purpose: Best Selling Products
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    p.productName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS revenue
FROM order_details od
JOIN products p ON od.productID = p.productID
GROUP BY p.productName
ORDER BY revenue DESC
LIMIT 10;