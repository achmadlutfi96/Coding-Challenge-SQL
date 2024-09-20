/*  SQL  */
SELECT LENGTH(name) AS id, LENGTH(CAST(legs AS TEXT)) AS name, LENGTH(CAST(arms AS TEXT)) AS legs, LENGTH(characteristics) AS arms, LENGTH(CAST(id AS CHAR)) AS characteristics FROM monsters;

SELECT 
  length(name) AS id,
  length(legs::text) AS name,
  length(arms::text) AS legs,
  length(characteristics) AS arms,
  length(id::text) AS characteristics
FROM
  monsters