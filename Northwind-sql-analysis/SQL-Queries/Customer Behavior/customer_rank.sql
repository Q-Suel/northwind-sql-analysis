-- =============================================
-- Filename: customer_rank.sql
-- Purpose: Rank customers by total spend (lifetime value)
-- Author: Quinton Suel
-- =============================================

-- Set the working database
USE northwind;

-- =============================================
-- Step 1: Create a CTE to calculate total spend per customer
-- =============================================
WITH customer_sales AS (
    SELECT 
        c.customerID,
        c.companyName,
        ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)), 2) AS total_spent
    FROM customers c
    JOIN orders o ON c.customerID = o.customerID
    JOIN order_details od ON o.orderID = od.orderID
    GROUP BY c.customerID, c.companyName
)

-- =============================================
-- Step 2: Rank customers by total_spent
-- =============================================
SELECT 
    customerID,
    companyName,
    total_spent,
    RANK() OVER (ORDER BY total_spent DESC) AS customer_rank
FROM customer_sales
ORDER BY customer_rank
LIMIT 10;
