SELECT DISTINCT city
FROM station
WHERE mod(id,2) = 0
ORDER BY city;
