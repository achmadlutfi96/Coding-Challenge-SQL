select *
  , numerator / gcd(numerator, denominator) as reduced_numerator
  , denominator / gcd(numerator, denominator) as reduced_denominator
from fraction
order by 1, 2;