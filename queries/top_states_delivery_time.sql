SELECT customer_state,
ROUND(AVG(TIMESTAMP_DIFF(order_delivered_customer_date, order_purchase_timestamp, DAY)), 2) AS avg_delivery_time
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
WHERE order_status = 'delivered'
GROUP BY customer_state
ORDER BY avg_delivery_time DESC
LIMIT 5;