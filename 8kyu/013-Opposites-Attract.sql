-- # write your SQL statement here: you are given a table 'love' with columns 'flower1' and 'flower2', return a table with all the columns and your result in a column named 'res'.
SELECT flower1, flower2, NOT (flower1%2 = flower2%2) AS res FROM love;

-- Alternative
-- SELECT flower1, flower2, (flower1 + flower2) % 2 = 1 AS res FROM love