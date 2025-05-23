SELECT customer_state, COUNT(*) AS customer_count
FROM `target`.customers
GROUP BY customer_state
ORDER BY customer_count DESC;