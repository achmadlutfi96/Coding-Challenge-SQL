--but on the land of Lórien no shadow lay--
SELECT CONCAT(UPPER(SUBSTR(firstname,1,1)),SUBSTR(firstname,2), ' ', UPPER(SUBSTR(lastname,1,1)),SUBSTR(lastname,2)) as shortlist FROM Elves WHERE firstname LIKE '%tegil%' OR lastname LIKE '%astar%';

-- Alternative
SELECT INITCAP(concat_ws(' ', firstname, lastname))  AS shortlist   FROM Elves
WHERE firstname LIKE '%tegil%' Or lastname LIKE '%astar%';