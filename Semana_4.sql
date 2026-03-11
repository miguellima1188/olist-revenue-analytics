SELECT 
    p.product_category_name,
    SUM(i.price) AS faturamento_total
FROM olist_order_items_dataset i
JOIN olist_products_dataset p ON i.product_id = p.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
-- O QUE VEM AQUI PARA FILTRAR O FATURAMENTO?
HAVING faturamento_total > 100000
ORDER BY faturamento_total DESC;