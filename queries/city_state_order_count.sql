SELECT customer_state, customer_city, COUNT(*) AS order_count
FROM `target`.customers
GROUP BY customer_state, customer_city;