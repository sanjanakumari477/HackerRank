'''Que:- A Median is defind as a number seprating the higher half of a dataset from lower half.
     Query the median of Norther Latitude (LAT_N) from station and round year to 4 decimal places.'''

Ans:- SELECT ROUND(AVG(LAT_N), 4) AS median_lat
FROM (
    SELECT LAT_N,
           @row := @row + 1 AS rn
    FROM STATION, (SELECT @row := 0) r
    ORDER BY LAT_N
) t
WHERE rn IN (
    FLOOR((@row + 1) / 2),
    FLOOR((@row + 2) / 2)
);
