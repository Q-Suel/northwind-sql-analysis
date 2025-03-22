-- =============================================
-- Filename: order_frequency.sql
-- Purpose: Order Frequency
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining customers with orders to analyze customer behavior

SELECT 
    c.companyName,
    COUNT(o.orderID) AS order_count,
    CASE 
        WHEN COUNT(o.orderID) >= 20 THEN 'High'
        WHEN COUNT(o.orderID) BETWEEN 10 AND 19 THEN 'Medium'
        ELSE 'Low'
    END AS customer_segment
FROM customers c
LEFT JOIN orders o ON c.customerID = o.customerID
GROUP BY c.companyName
ORDER BY order_count DESC;