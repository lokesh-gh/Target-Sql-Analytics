SELECT customer_state,
ROUND(AVG(TIMESTAMP_DIFF(order_estimated_delivery_date, order_delivered_customer_date, DAY)), 2) AS avg_difference
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
WHERE order_status = 'delivered'
GROUP BY customer_state
ORDER BY avg_difference DESC
LIMIT 5;