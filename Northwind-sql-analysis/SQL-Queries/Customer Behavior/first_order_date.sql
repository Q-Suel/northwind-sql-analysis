-- =============================================
-- Filename: first_order_date(Advanced).sql
-- Purpose: First Order Dateadvanced
-- Author: Quinton Suel
-- =============================================
USE northwind;

WITH ranked_orders AS (
    SELECT 
        customerID,
        orderID,
        orderDate,
        ROW_NUMBER() OVER (PARTITION BY customerID ORDER BY orderDate) AS rn
    FROM orders
)
SELECT * 
FROM ranked_orders 
WHERE rn = 1
order by orderDate;