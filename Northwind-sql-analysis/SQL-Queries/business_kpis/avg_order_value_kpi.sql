-- =============================================
-- Filename: avg_order_value.sql
-- Purpose: Avg Order Value
-- Author: Quinton Suel
-- =============================================
USE northwind;

-- Joining related tables to analyze performance

SELECT 
    ROUND(SUM(od.unitPrice * od.quantity * (1 - od.discount)) / COUNT(DISTINCT o.orderID), 2) AS avg_order_value
FROM orders o
JOIN order_details od ON o.orderID = od.orderID;