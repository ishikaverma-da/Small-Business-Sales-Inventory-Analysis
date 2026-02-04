--11.GENDER-WISE SALES.

-- This query calculates total sales revenue for each gender.
-- The order_details table is joined with products to get selling prices,
-- and with orders and customers to associate each sale with customer gender.
-- Revenue is calculated as quantity × selling price and grouped by gender.
-- This helps understand which gender contributes more to sales.

SELECT TRIM(LOWER(c.gender)) AS gender,
       SUM(od.quantity * p.selling_price) AS gender_wise_sales
       FROM order_details od
       JOIN  products p
       ON    od.product_id=p.product_id
       JOIN orders o
       ON   od.order_id=o.order_id 
       JOIN customers c
       ON   o.customer_id= c.customer_id
       GROUP BY TRIM(LOWER(c.gender));
