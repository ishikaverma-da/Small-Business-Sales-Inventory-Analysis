--10.CITY WISE CUSTOMERS.                       

-- This query calculates the number of customers in each city.
-- It groups the customers table by city and counts the number of customer IDs per city.
-- This helps analyze the geographic distribution of the customer base.

SELECT TRIM(LOWER(city))as city,
     COUNT(customer_id) AS city_wise_customer
     FROM  customers
     GROUP BY TRIM(LOWER(city));
