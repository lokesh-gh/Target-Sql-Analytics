SELECT time_period, order_count,
ROUND((((order_count - LAG(order_count) OVER(ORDER BY t1.year, t1.month)) /
LAG(order_count) OVER(ORDER BY t1.year, t1.month)) * 100), 2) AS growth_percent
FROM (
  SELECT EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
         EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
         FORMAT_DATE('%b %Y', DATE(order_purchase_timestamp)) AS time_period,
         COUNT(order_id) AS order_count
  FROM `target`.orders
  WHERE order_status = 'delivered'
  GROUP BY year, month, time_period
) t1
ORDER BY year, month;