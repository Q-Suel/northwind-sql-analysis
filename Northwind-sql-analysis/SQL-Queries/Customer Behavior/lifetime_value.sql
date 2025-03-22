-- =============================================
-- Filename: lifetime_value.sql
-- Purpose: Lifetime Value
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining customers with orders to analyze customer behavior

WITH customer_sales AS (
    SELECT 
        c.customerID,
        ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS total_spent
    FROM customers c
    JOIN orders o ON c.customerID = o.customerID
    JOIN order_details od ON o.orderID = od.orderID
    GROUP BY c.customerID
)
SELECT 
    customerID,
    total_spent AS lifetime_value
FROM customer_sales
ORDER BY lifetime_value DESC;