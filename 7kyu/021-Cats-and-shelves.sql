--# write your SQL statement here: 
-- you are given a table 'jumps' with columns 'a' (start) and 'b' (finish).
-- return a table with:
--   these columns and your result in a column named 'res'
SELECT a, b, (b - a) % 3 + (b - a) / 3 AS res
FROM jumps