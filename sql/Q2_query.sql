--2.TOTAL ORDER.

-- This query calculates the total number of orders placed in the business.
-- It uses the orders table and counts all order IDs to get the overall total orders.

SELECT 
     COUNT(order_id)AS Total_order
     FROM orders;
