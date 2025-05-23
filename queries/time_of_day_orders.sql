SELECT CASE
  WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 0 AND 6 THEN 'Dawn'
  WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 7 AND 12 THEN 'Morning'
  WHEN EXTRACT(HOUR FROM order_purchase_timestamp) BETWEEN 13 AND 18 THEN 'Afternoon'
  ELSE 'Night' END AS time_of_day,
  COUNT(*) AS order_count
FROM `target`.orders
GROUP BY time_of_day
ORDER BY order_count DESC;