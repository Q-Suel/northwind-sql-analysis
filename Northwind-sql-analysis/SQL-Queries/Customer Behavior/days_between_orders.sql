-- =============================================
-- Filename: days_between_orders.sql
-- Purpose: Days Between Orders
-- Author: Quinton Suel
-- =============================================
USE northwind;

SELECT 
    o.customerID,
    o.orderID,
    o.orderDate,
    LAG(o.orderDate) OVER (PARTITION BY o.customerID ORDER BY o.orderDate) AS previous_order_date,
    DATEDIFF(o.orderDate, LAG(o.orderDate) OVER (PARTITION BY o.customerID ORDER BY o.orderDate)) AS days_between_orders
FROM orders o
ORDER BY o.customerID, o.orderDate;