SELECT EXTRACT(MONTH FROM order_purchase_timestamp) AS month, COUNT(*) AS order_count
FROM `target`.orders
GROUP BY month
ORDER BY month;