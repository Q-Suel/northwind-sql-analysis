-- =============================================
-- Filename: repeat_purchase_rate.sql
-- Purpose: Repeat Purchase Rate
-- Author: Quinton Suel
-- =============================================
USE northwind;

WITH customer_order_counts AS (
    SELECT customerID, COUNT(orderID) AS total_orders
    FROM orders
    GROUP BY customerID
)
SELECT 
    COUNT(*) AS repeat_customers,
    (SELECT COUNT(DISTINCT customerID) FROM orders) AS total_customers,
    ROUND(COUNT(*) / (SELECT COUNT(DISTINCT customerID) FROM orders), 2) AS repeat_rate
FROM customer_order_counts
WHERE total_orders > 1;