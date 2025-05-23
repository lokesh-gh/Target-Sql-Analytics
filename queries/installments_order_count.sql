SELECT payment_installments, COUNT(*) AS order_count
FROM `target`.payments
GROUP BY payment_installments
ORDER BY order_count DESC;