-- =============================================
-- Filename: six_month_check.sql
-- Purpose: Six Month Check
-- Author: Quinton
-- =============================================
USE northwind;

-- Joining customers with orders to analyze customer behavior

SELECT 
    c.companyName,
    MAX(o.orderDate) AS last_order_date
FROM customers c
JOIN orders o ON c.customerID = o.customerID
GROUP BY c.companyName
HAVING MAX(o.orderDate) < DATE_SUB('2015-05-01', INTERVAL 6 MONTH)
order by MONTH(last_order_date), YEAR(last_order_date) desc;