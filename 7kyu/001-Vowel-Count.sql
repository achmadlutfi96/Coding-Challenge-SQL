SELECT str, LENGTH(REGEXP_REPLACE(str, '[^aeiou]', '', 'g')) AS res
FROM getcount