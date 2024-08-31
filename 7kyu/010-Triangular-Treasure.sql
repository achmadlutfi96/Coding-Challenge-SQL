--# write your SQL statement here: 
-- you are given a table 'triangular' with column 'n'
-- return a table with this column and your result in a column named 'res'.
SELECT n, 
CASE 
 WHEN n < 0 THEN 0 
 ELSE n*(n+1)/2 
END 
AS res FROM triangular;