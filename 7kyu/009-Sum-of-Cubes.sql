select n, cast(sum(n3) as bigint) as res 
from (
  select n,power((generate_series(1,n)),3) as n3 from cubes) as foo
group by n
order by n