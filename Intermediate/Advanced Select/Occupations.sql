/*
Note that this solution does only work for the case provided, where there are more people in the professor occupation than any other.
I have since looked at the discussion and now understand better ways to solve this problem but this is the method I used to solve the problem without cheating hence why I am sharing this.
*/

SELECT doctor.name, professor.name, singer.name, actor.name
FROM (SELECT ROW_NUMBER() OVER (ORDER BY name) row_num, name
FROM occupations WHERE occupation = "Doctor" ORDER BY name) AS doctor
RIGHT JOIN (SELECT ROW_NUMBER() OVER (ORDER BY name) row_num, name FROM occupations WHERE occupation = "Professor" ORDER BY name) AS professor ON doctor.row_num=professor.row_num
LEFT JOIN (SELECT ROW_NUMBER() OVER (ORDER BY name) row_num, name FROM occupations WHERE occupation = "Singer" ORDER BY name) AS singer ON professor.row_num=singer.row_num
LEFT JOIN (SELECT ROW_NUMBER() OVER (ORDER BY name) row_num, name FROM occupations WHERE occupation = "Actor" ORDER BY name) AS actor ON professor.row_num=actor.row_num
