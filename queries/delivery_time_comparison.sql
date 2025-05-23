SELECT order_id,
TIMESTAMP_DIFF(order_delivered_customer_date, order_purchase_timestamp, DAY) AS delivery_time,
TIMESTAMP_DIFF(order_estimated_delivery_date, order_delivered_customer_date, DAY) AS estimated_vs_actual_delivery
FROM `target`.orders
WHERE order_status = 'delivered';