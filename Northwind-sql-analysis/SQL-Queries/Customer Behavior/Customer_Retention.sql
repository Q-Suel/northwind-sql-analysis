-- =============================================
-- Filename: Customer_Retention.sql
-- Purpose: Customer Retention
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining customers with orders to analyze customer behavior

SELECT 
    c.companyName,
    MAX(YEAR(o.orderDate)) AS last_order_year
FROM customers c
JOIN orders o ON c.customerID = o.customerID
GROUP BY c.companyName
HAVING last_order_year < 2015;