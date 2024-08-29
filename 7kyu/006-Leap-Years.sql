select
  year,
  year%4 = 0 AND NOT year%100 = 0 OR year%400 = 0 as is_leap  -- your code here
from years
order by year;      -- result has to be sorted by year, ascending