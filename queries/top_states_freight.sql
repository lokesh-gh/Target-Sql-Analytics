SELECT customer_state,
ROUND(AVG(order_items.freight_value), 2) AS avg_freight
FROM `target`.order_items
JOIN orders ON order_items.order_id = orders.order_id
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customer_state
ORDER BY avg_freight DESC
LIMIT 5;