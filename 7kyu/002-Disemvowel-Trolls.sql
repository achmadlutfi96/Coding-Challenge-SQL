-- # write your SQL statement here: you are given a table 'disemvowel' with column 'str', return a table with column 'str' and your result in a column named 'res'.
SELECT str, REGEXP_REPLACE(str, '[aiueoAIUEO]', '', 'g') AS res FROM disemvowel;

-- ALTERNATIVE
SELECT str, REGEXP_REPLACE(str, '[aiueo]', '', 'ig') AS res FROM disemvowel;