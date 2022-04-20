SELECT CASE WHEN A = B AND B = C THEN "Equilateral"
            WHEN A+B <= C OR B+C <= A OR A+C <= B THEN "Not A Triangle"
            WHEN A != B AND B != C AND A != C THEN "Scalene"
            ELSE "Isosceles" END AS output
FROM triangles
