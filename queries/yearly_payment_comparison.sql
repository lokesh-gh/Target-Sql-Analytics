SELECT year, ROUND(SUM(payment_value), 2) AS total_orders_value,
ROUND((SUM(payment_value) - LAG(SUM(payment_value)) OVER(ORDER BY year)) /
NULLIF(LAG(SUM(payment_value)) OVER(ORDER BY year), 0) * 100, 2) AS percent_increase_YOY
FROM (
  SELECT EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year, p.payment_value
  FROM `target`.orders o
  JOIN `target`.payments p ON o.order_id = p.order_id
  WHERE o.order_status = 'delivered' AND EXTRACT(MONTH FROM o.order_purchase_timestamp) BETWEEN 1 AND 8
) t1
GROUP BY year
ORDER BY year;