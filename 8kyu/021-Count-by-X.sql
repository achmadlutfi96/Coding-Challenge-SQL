-- Alternative 1
SELECT x, n, ARRAY(SELECT generate_series(x, x*n, x)) AS res
FROM counter
ORDER BY x, n

-- Alternative 2
select x, n, (select array_agg(i) from generate_series(x, x * n, x) i) as res
from counter
order by x, n

-- Alternative 3
select *, array(select * from generate_series(x,x*n,x)) res from counter order by 1,2