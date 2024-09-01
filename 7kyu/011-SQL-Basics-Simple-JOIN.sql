-- Create your SELECT statement here
SELECT products.id, products.name, products.isbn, companies.id as company_id, companies.name AS company_name
FROM products 
LEFT JOIN companies
ON products.company_id = companies.id;

-- Alternative
SELECT p.*,
       c.name AS company_name
  FROM products p,
       companies c
 WHERE c.id = p.company_id