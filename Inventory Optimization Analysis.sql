/* Low Stock Report */
SELECT
    s.store_name,
    p.product_name,
    c.category_name,
    st.quantity AS stock_on_hand
FROM stocks st
JOIN stores s ON st.store_id = s.store_id
JOIN products p ON st.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
WHERE st.quantity <= 10  /* You can change this threshold */
ORDER BY s.store_name, st.quantity ASC;