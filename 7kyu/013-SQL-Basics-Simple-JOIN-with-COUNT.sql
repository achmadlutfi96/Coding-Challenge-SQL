-- Create your SELECT statement here
SELECT people.id, people.name, Count(toys.id) AS toy_count 
FROM people
LEFT JOIN toys
ON people.id = toys.people_id 
GROUP BY people.id;

-- Alternative
SELECT p.*, COUNT(t) AS toy_count
FROM people p
JOIN toys t
  ON t.people_id = p.id
GROUP BY p.id