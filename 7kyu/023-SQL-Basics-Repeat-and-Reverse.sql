/*  SQL  */
SELECT CONCAT(name,name,name) AS name, REVERSE(characteristics) AS characteristics FROM monsters;

-- Alternative
SELECT REPEAT(name, 3) AS name, REVERSE(characteristics) AS characteristics FROM monsters