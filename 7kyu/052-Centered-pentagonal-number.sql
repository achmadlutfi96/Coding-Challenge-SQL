--# write your SQL statement here: 
-- you are given a table 'pentagonal' with column 'n' (the bounds in SQL translation: -1000 <= n <= 10^5)
-- return a table with all this column and your result in a column named 'res'.
SELECT n, 
CASE
  WHEN n <= 0 THEN -1
  ELSE (5 * (n * (n - 1)/2) + 1) 
END AS res    
FROM pentagonal;