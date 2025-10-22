/* Create a master view for all sales performance.
  This view flattens the sales data and will be the
  single source of truth for most of our Power BI visuals.
*/
CREATE VIEW v_Sales_Performance_Master AS
SELECT
    o.order_id,
    oi.item_id,
    o.order_date,
    o.required_date,
    o.shipped_date,
    DATEDIFF(o.shipped_date, o.required_date) AS shipment_delay_days,
    
    /* Product Info */
    p.product_id,
    p.product_name,
    c.category_name,
    b.brand_name,
    p.model_year,
    
    /* Store & Staff Info */
    st.store_id,
    st.store_name,
    st.city AS store_city,
    st.state AS store_region,
    s.staff_id,
    CONCAT(s.first_name, ' ', s.last_name) AS staff_full_name,
    
    /* Customer Info */
    cu.customer_id,
    CONCAT(cu.first_name, ' ', cu.last_name) AS customer_full_name,
    cu.city AS customer_city,
    cu.state AS customer_region,
    
    /* Financials */
    oi.quantity,
    oi.list_price,
    oi.discount,
    (oi.quantity * oi.list_price) AS total_revenue,
    (oi.quantity * oi.list_price * oi.discount) AS discount_amount,
    (oi.quantity * oi.list_price * (1 - oi.discount)) AS net_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
JOIN brands b ON p.brand_id = b.brand_id
JOIN stores st ON o.store_id = st.store_id
JOIN staffs s ON o.staff_id = s.staff_id
JOIN customers cu ON o.customer_id = cu.customer_id;