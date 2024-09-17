SELECT count(id) as products, country
FROM products
WHERE country in ('United States of America', 'Canada')
GROUP BY country
ORDER BY products desc;