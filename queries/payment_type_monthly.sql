SELECT EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
payment_type,
COUNT(*) AS order_count
FROM `target`.orders
JOIN payments ON orders.order_id = payments.order_id
GROUP BY year, month, payment_type
ORDER BY year, month;