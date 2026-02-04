
8.--TOTAL CUSTOMERS.

-- This query calculates the total number of unique customers.
-- COUNT(DISTINCT customer_id) ensures that each customer is counted only once,
-- even if they have placed multiple orders.
-- This gives the overall customer base of the business.

 SELECT  
       DISTINCT COUNT(customer_id)AS Total_Customer
       FROM CUSTOMERS;
