-- Replace with your SQL Query
SELECT COUNT(name) AS count_products_types, producer FROM products GROUP BY producer ORDER BY count_products_types DESC;