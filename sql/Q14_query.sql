--14.SLOW-MOVING PRODUCTS.

-- This query identifies slow-moving products based on the total quantity sold.
-- The products table is left joined with order_details to include all products,
-- even those that have not been sold at all.
-- COALESCE(SUM(od.quantity), 0) calculates total units sold per product, treating unsold products as 0.
-- Results are ordered in ascending order of total quantity sold to highlight products that are selling the least.
-- This helps the business identify slow-moving inventory and plan promotions or stock adjustments accordingly.

SELECT
    p.product_name,p.stock_quantity,
    COALESCE(SUM(od.quantity), 0) AS Total_sold
    FROM products p
    LEFT JOIN order_details od
    ON p.product_id = od.product_id
    GROUP BY p.product_name, p.stock_quantity
    ORDER BY Total_sold  ASC ;
