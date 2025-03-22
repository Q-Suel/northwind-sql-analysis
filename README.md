
# 🧠 Customer Insights & Sales Performance Analysis (Northwind SQL Project)

## 📋 Project Overview

This project analyzes sales trends, customer behavior, and employee performance using the Northwind dataset — a realistic simulation of a small business's operations. The goal was to extract valuable business insights using SQL and showcase advanced data analysis skills, including aggregation, segmentation, KPI creation, and window functions.

---

## 🔍 Business Questions Answered

- 📈 What are the total monthly and yearly sales trends?  → `total_sales_by_month.sql`
- 🏆 Who are the top 10 best-selling products by revenue?  → `Best_selling_products.sql`
- 💰 Who are the top 5 highest-paying customers? → `highest_paying_customers.sql`
- 👥 Which employees generate the most revenue and handle the most orders? → `total_employee_revenue.sql`, `Total_orders_handled.sql`
- 📦 What is the average order value (AOV)? → `avg_order_value_kpi.sql`
- 🔁 How many customers place repeat purchases? → `repeat_purchase_rate.sql`
- 🕒 What is the time between customer orders? → `days_between_orders.sql`
- ❄️ Which customers have not ordered in the last 6 months? → `six_month_check.sql`
- 📊 Which product categories generate the most revenue? → `category_revenue.sql`

---

## 💡 Key Insights

- Over **30% of customers** have not placed an order in the last 6 months.
- The **top 5 customers** contribute a significant portion of total sales.
- One employee is responsible for the **highest revenue** while managing fewer orders, indicating high-value transactions.
- The **best-selling product** earns 3x more revenue than the average product.
- **Repeat customers** spend nearly **double** the amount of one-time buyers.

---

## 📌 Key KPIs Calculated

- **Total Revenue by Month** → `total_sales_by_month.sql`
- **Average Order Value (AOV)** → `avg_order_value_kpi.sql`
- **Customer Lifetime Value (LTV)** → `lifetime_value.sql`
- **Repeat Purchase Rate** → `repeat_purchase_rate.sql`
- **Revenue by Product Category** → `category_revenue.sql`

---

## 🧮 SQL Techniques Demonstrated

- ✅ Advanced `JOIN`, `GROUP BY`, and aggregation queries → `performance_by_month.sql`
- ✅ `CASE` statements for customer segmentation → `order_frequency.sql`
- ✅ Window functions: `LAG()`, `RANK()`, `ROW_NUMBER()` → `days_between_orders.sql`, `customer_rank.sql`, `first_order_date.sql`
- ✅ Common Table Expressions (CTEs) for reusable, readable queries → `first_order_date.sql`
- ✅ Real-world KPI and metric development → ('business_kpis' Folder)

---

## 🗃️ Files & Query Topics

| Filename | Purpose |
|---------|---------|
| `total_sales_by_month.sql` | Monthly revenue trends |
| `Best_selling_products.sql` | Top 10 selling products |
| `highest_paying_customers.sql` | Top 5 customers by revenue |
| `Total_orders_handled.sql` | Orders per employee |
| `total_employee_revenue.sql` | Revenue per employee |
| `Performance_by_month.sql` | Monthly employee revenue |
| `avg_order_value.sql` | Average order value |
| `repeat_purchase_rate.sql` | How often customers reorder |
| `days_between_orders.sql` | Time gaps between customer orders |
| `six_month_check.sql` | Customers inactive for 6+ months |
| `order_frequency.sql` | Customer frequency segments |
| `first_order_date(Advanced).sql` | First-time customer orders |
| `Customer_Retention.sql` | Last active year per customer |
| `customer_rank.sql` | Ranking customers by LTV |
| `lifetime_value.sql` | Total customer spend |
| `category_revenue.sql` | Revenue by product category |

---

## 📁 Folder Structure

```
northwind-sql-analysis/
│
├── queries/                      # Cleaned SQL scripts by topic
│   ├── sales_analysis/
│   ├── customer_behavior/
│   ├── employee_performance/
│   ├── business_kpis/
│
├── README.md                     # This file
├── data/                         # CSVs or source files 
└── dashboard/                    # Visualizations 
```

---
## 📊 Interactive Dashboard

> 🖱️ [View the full Tableau Dashboard](https://us-east-1.online.tableau.com/t/suelquinton0-23223b7149/views/totalsalesbymonth/Dashboard1?:origin=card_share_link&:embed=n)

## 🧑‍💼 Author

**Quinton Suel**  

