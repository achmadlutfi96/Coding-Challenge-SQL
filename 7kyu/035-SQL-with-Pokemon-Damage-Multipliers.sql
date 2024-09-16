-- i choose you! --
SELECT p.pokemon_name, p.str*m.multiplier AS modifiedstrength, m.element
FROM pokemon AS p
LEFT JOIN multipliers AS m
ON m.id = p.element_id
WHERE p.str*m.multiplier >= 40 
ORDER BY modifiedstrength DESC;

-- Alternative
SELECT
  p.pokemon_name,
  p.str * m.multiplier AS modifiedStrength,
  m.element
FROM pokemon AS p
JOIN multipliers AS m ON m.id = p.element_id
WHERE (p.str * m.multiplier) >= 40
ORDER BY 2 DESC;