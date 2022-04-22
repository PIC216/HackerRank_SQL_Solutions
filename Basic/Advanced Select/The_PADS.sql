SELECT CONCAT(name, "(", SUBSTRING(occupation, 1, 1), ")") AS valuesx
FROM occupations
ORDER BY name;

SELECT CONCAT("There are a total of ", COUNT(occupation), " ", LOWER(occupation), "s.") AS valuey
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation), occupation;
