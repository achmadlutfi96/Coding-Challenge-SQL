/*  SQL  */
SELECT project, commits, contributors, REGEXP_REPLACE(address, '[0-9]', '!', 'g') AS address FROM repositories;