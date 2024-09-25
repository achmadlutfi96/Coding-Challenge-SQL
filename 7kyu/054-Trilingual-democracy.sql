--# write your SQL statement here: 
-- you are given a table 'trilingual_democracy' with column 'grp' (String)
--   'grp' contains chars from the set 'D', 'F', 'I', 'K'
-- create a query with:
--   'grp' and your result in a column named 'res' (char)
--   'res' is a single char from the above set
--   ordered ascending by 'grp'
select grp, chr(ascii(grp) # ascii(substr(grp,2,1)) # ascii(substr(grp,3,1))) res from trilingual_democracy order by grp