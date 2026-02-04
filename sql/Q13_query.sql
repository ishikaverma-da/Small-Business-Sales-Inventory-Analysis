--13.LOW STOCK PRODUCT.

-- This query identifies the top 10 products with the lowest remaining stock.
-- The products table is left joined with order_details to include all products,
-- even if some have not been sold.
-- Remaining stock is calculated as original stock minus total quantity sold per product.
-- Results are ordered in ascending order to highlight products that are running low.
-- Limiting to 10 helps focus on the most critical products needing restocking.

SELECT 
    p.product_name,
    p.stock_quantity - COALESCE(SUM(od.quantity), 0) AS Low_stock_products
    FROM products p
    LEFT JOIN order_details od
    ON p.product_id = od.product_id
    GROUP BY p.product_name, p.stock_quantity
    ORDER BY Low_stock_products ASC LIMIT 10;


