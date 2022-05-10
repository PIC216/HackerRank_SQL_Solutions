/*
Finds the Manhatten Distance, rounded to 4dp, of two points on a 2D plane where 1 point has the max latitude and max longitude in the table,
while the other point has the min latitude and min longitude.
*/

SELECT ROUND((MAX(lat_n)-MIN(lat_n))+(MAX(long_w)-MIN(long_w)), 4)
FROM station
