4--.AVERAGE ORDERS VALUE(Ek order pe average kitna paisa spend hua).

-- This query calculates the average order value, i.e., the average amount spent per order.
-- It joins the orders table with order_details to get the quantity per order,
-- and then with the products table to get the selling price.
-- Total revenue is calculated as quantity × selling price, then divided by the total number of distinct orders.
-- This gives the average revenue generated per order, useful for understanding customer spending behavior.
                

SELECT 
     SUM(od.quantity * p.selling_price)/ 
     COUNT(DISTINCT o.order_id)AS Average_order_value
     FROM orders o
     JOIN order_details od
     ON o.order_id=od.order_id
     JOIN products p
	 ON od.product_id=p.product_id;
