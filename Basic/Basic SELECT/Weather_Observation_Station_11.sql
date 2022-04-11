SELECT distinct city
FROM station
WHERE (city not LIKE 'A%'
AND city not LIKE 'E%'
AND city not LIKE 'I%'
AND city not LIKE 'O%'
AND city not LIKE 'U%')
OR 
(city not LIKE '%a'
AND city not LIKE '%e'
AND city not LIKE '%i'
AND city not LIKE '%o'
AND city not LIKE '%u')
;
