--- 3, 2, 1, fight! ---
SELECT f.name, SUM(f.won) as won, SUM(f.lost) as lost 
FROM fighters as f
LEFT JOIN winning_moves as w
ON f.move_id = w.id
WHERE w.move NOT IN ('Hadoken', 'Shouoken', 'Kikoken')
GROUP BY f.name 
ORDER BY won DESC
LIMIT 6;