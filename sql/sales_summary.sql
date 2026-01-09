SELECT product_type, SUM(quantity) AS total_quantity
FROM production_data
GROUP BY product_type;
