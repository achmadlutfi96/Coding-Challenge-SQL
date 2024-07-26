CREATE OR REPLACE FUNCTION summation(num INTEGER)
RETURNS INTEGER AS $$
DECLARE
  i INTEGER := 1;
  total INTEGER := 0;
BEGIN
  WHILE i <= num LOOP
    total := total + i;
    i := i + 1;
  END LOOP;
  RETURN total;
END;
$$ LANGUAGE plpgsql;


select n, summation(n) as res
from kata

-- Alternative 1
SELECT n, n * (n + 1) / 2 as res
FROM kata;

-- Alternative 2
SELECT 
  n,
  (SELECT SUM(range) FROM generate_series(1, n) as t(range)) as res
FROM kata