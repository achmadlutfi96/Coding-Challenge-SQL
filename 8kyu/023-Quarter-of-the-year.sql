-- # write your SQL statement here: you are given a table 'quarterof' with column 'month', return a table with column 'month' and your result in a column named 'res'.
SELECT month, 
CASE
  WHEN month%3 > 0 THEN month/3+1
  ELSE month/3
END
AS res FROM quarterof;

SELECT month, (month + 2) / 3 AS res FROM quarterof;