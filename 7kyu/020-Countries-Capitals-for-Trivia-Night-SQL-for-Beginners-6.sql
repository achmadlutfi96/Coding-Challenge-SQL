-- Your solution here
SELECT capital FROM countries WHERE country LIKE 'E%' AND continent IN ('Africa','Afrika') ORDER BY capital LIMIT 3;