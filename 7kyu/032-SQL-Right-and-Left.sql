/*  SQL  */
SELECT SUBSTRING(project, 1, commits) AS project, SUBSTRING(address, length(address)-contributors+1, contributors) AS address FROM repositories;

-- Alternative
select left(project, commits) as project, right(address, contributors) as address from repositories