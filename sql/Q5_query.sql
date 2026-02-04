5.-- TOP 5 PRODUCTS BY REVENUE

-- This query identifies the top 5 products generating the highest revenue.
-- It joins the order_details table with products to get the selling price of each product.
-- Revenue per product is calculated as quantity × selling price.
-- Results are grouped by product_name to get total revenue per product,
-- then ordered in descending order to show the highest revenue products first,
-- and limited to 5 to show only the top performers.

SELECT p.product_name,
      SUM(od.quantity * p.selling_price)AS Total_revenue
      FROM order_details od
      JOIN products p
      ON od.product_id=p.product_id
      GROUP BY p.product_name
      ORDER BY Total_revenue DESC LIMIT 5;
