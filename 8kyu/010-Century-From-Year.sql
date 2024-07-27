SELECT CEIL(yr/100.00) AS century FROM years;

-- Alternative
SELECT CEIL(yr::REAL/100) AS century FROM years;