Que : Consider P1 and P2 to be two points on a 2D plane.

      a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
      b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
      c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
      d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
      Query the Manhattan Distance between points p1 and p2 and round it to a scale of 4 decimal places.

Sol:--
SELECT 
  ROUND(
    ABS(MAX(LONG_W * 1.0) - MIN(LONG_W * 1.0)) + 
    ABS(MAX(LAT_N * 1.0) - MIN(LAT_N * 1.0)),
    4
  ) AS manhattan_distance
FROM STATION
WHERE LAT_N IS NOT NULL AND LONG_W IS NOT NULL;
