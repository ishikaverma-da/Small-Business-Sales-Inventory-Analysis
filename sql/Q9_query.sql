9.-- REPEAT VS NEW CUSTOMERS.'

-- This query classifies customers as either New or Repeat based on their order history.
-- It groups the orders table by customer_id and counts the number of orders per customer.
-- If a customer has only 1 order, they are labeled 'New_customers';
-- if more than 1 order, they are labeled 'Repeat_Customer'.
-- This helps the business understand customer retention and repeat buying behavior.

SELECT customer_id,
          CASE WHEN COUNT(order_id)=1 THEN 'New_customers'
          ELSE 'Repeat_Customer' END AS customer_type
          FROM orders
          GROUP BY customer_id;
