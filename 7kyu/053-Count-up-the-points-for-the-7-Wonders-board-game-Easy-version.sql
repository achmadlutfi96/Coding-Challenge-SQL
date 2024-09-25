-- # write your SQL statement here: 
-- you are given a table 'seven_wonders_science' with columns 'id', 'compasses', 'gears' and 'tablets'
-- return a table with columns 'id', 'compasses', 'gears' and 'tablets' and your result in a column named 'res'
SELECT id, compasses, gears, tablets, ((
CASE 
  WHEN compasses <= gears AND compasses <= tablets THEN compasses
  WHEN gears <= compasses AND gears <= tablets THEN gears
  ELSE tablets
END
)*7)+(CAST(compasses^2 AS integer) + CAST(gears^2 AS integer) + CAST(tablets^2 AS integer))
AS res FROM seven_wonders_science;

-- Alternative
select *, (compasses ^ 2 + gears ^ 2 + tablets ^ 2 + least(compasses, gears, tablets) * 7)::int as res
from seven_wonders_science