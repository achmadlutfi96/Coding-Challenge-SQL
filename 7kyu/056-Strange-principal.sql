-- # write your SQL statement here: you are given a table 'numofopenlockers' with column 'n', return a table with column 'n' and your result in a column named 'res'.
select n, floor(|/ n)::int res
from numofopenlockers