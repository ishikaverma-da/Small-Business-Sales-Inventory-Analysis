3--MONTHWISE SALES/REVENUE TREND.

-- This query calculates the total revenue for each month to analyze sales trends.
-- The orders table is joined with order_details to get the quantity sold per order.
-- It is further joined with the products table to get the selling price.
-- Revenue is calculated as quantity × selling price for each product in each order.
-- EXTRACT(MONTH FROM order_date) is used to group the revenue month-wise.
-- The results are ordered by month to show the trend chronologically.

SELECT 
    EXTRACT(MONTH FROM o.order_date)AS months,
    SUM(od.quantity * p.selling_price) AS monthy_revenue
    FROM orders o
    JOIN order_details od
	ON o.order_id=od.order_id
    JOIN products p
    ON  od.product_id = p.product_id
    GROUP BY months
    ORDER BY months;