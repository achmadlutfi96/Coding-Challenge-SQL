-- Replace with your SQL Query
SELECT first_name, last_name FROM names WHERE first_name LIKE '______%';

-- Alternative
select first_name, last_name from names where first_name ~ '.{6,}' -- like it :P