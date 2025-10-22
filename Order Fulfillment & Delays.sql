/* Delayed Shipments Report */
SELECT
    order_id,
    customer_id,
    order_date,
    required_date,
    shipped_date,
    DATEDIFF(shipped_date, required_date) AS days_delayed
FROM orders
WHERE shipped_date > required_date
ORDER BY days_delayed DESC;