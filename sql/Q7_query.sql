7.--QUANTITY_WISE BEST SELLING PRODUCT.


-- This query identifies the best-selling product based on total quantity sold.
-- It joins the products table with order_details to get the quantity sold for each product.
-- SUM(od.quantity) calculates total units sold per product.
-- Results are grouped by product_name and ordered in descending order,
-- limiting to 1 to show the product with the highest quantity sold.

SELECT p.product_name,
            SUM(od.quantity)AS Total_quantity_sold
            FROM   products p
            JOIN   order_details od
            ON     p.product_id=od.product_id
            GROUP BY product_name
            ORDER BY Total_quantity_sold DESC LIMIT 10;
