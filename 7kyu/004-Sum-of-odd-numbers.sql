/*
the table "nums" contains an integer "n", the number
return your result in a column "res"
*/
SELECT CAST(POW(n, 3) AS int) AS res FROM nums;

-- Alternative

SELECT POWER(n, 3)::int as res from nums;