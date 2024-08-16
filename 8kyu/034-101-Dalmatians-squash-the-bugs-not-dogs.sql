-- # write your SQL statement here: 
-- you are given a table 'dalmatians' with column 'n' (int)
-- return a query with column 'n' and your result in a column named 'res' (text)
-- sort results by column 'n' ascending

select n, case
  when n <= 10 then 'Hardly any' 
  when n <= 50 then 'More than a handful!' 
  when n = 101 then '101 DALMATIANS!!!' 
  else 'Woah that''s a lot of dogs!' end as res
from dalmatians
order by 1 asc;