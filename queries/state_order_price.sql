SELECT customer_state,
ROUND(SUM(order_items.price), 2) AS total_price,
ROUND(AVG(order_items.price), 2) AS avg_price
FROM `target`.order_items
JOIN orders ON order_items.order_id = orders.order_id
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customer_state;