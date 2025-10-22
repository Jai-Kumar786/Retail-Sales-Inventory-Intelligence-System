/* Staff Performance Report */
SELECT
    s.first_name,
    s.last_name,
    st.store_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.list_price) AS total_revenue,
    SUM(oi.quantity * oi.list_price * oi.discount) AS total_discount_amount,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS net_sales
FROM staffs s
JOIN orders o ON s.staff_id = o.staff_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN stores st ON s.store_id = st.store_id
GROUP BY s.staff_id, s.first_name, s.last_name, st.store_name
ORDER BY net_sales DESC;