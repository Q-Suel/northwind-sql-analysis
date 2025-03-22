-- =============================================
-- Filename: category_revenue.sql
-- Purpose: Category Revenue
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    cat.categoryName,
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS category_revenue
FROM order_details od
JOIN products p ON od.productID = p.productID
JOIN categories cat ON p.categoryID = cat.categoryID
GROUP BY cat.categoryName
ORDER BY category_revenue DESC;