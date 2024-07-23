SELECT bool, 
CASE 
    WHEN bool = true THEN 'Yes' 
    ELSE 'No'
END AS res 
FROM booltoword;