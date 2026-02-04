--12.STOCK REMAINING AFTER ORDERS.

-- This query calculates the remaining stock for each product after accounting for sales.
-- The products table is left joined with order_details to include all products,
-- even if some have not been sold.
-- COALESCE(SUM(od.quantity), 0) ensures that products with no sales are treated as 0 sold.
-- Remaining stock is calculated as original stock minus total quantity sold per product.
-- This helps monitor inventory levels and plan restocking.

SELECT p.product_name,
       p.stock_quantity - COALESCE(SUM(od.quantity), 0) AS remaining_stock
       FROM products p
       LEFT JOIN order_details od
       ON p.product_id = od.product_id
       GROUP BY p.product_name, p.stock_quantity;
