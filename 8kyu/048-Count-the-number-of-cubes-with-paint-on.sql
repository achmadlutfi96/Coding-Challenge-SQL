--# write your SQL statement here: 
-- you are given a table 'squares' with column 'n' (numer of cubes).
-- return a table with:
--   this column and your result in a column named 'res'
SELECT n,
CAST(CASE 
  WHEN n > 1 THEN POW(n+1, 3) - POW(n-1, 3)
  ELSE POW(n+1, 3)
END AS int) 
AS res
FROM squares;