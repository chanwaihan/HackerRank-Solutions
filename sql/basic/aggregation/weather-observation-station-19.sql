-- Difficulty: Medium
-- Language: Oracle

-- Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the
-- respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the
-- respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

-- Query the Euclidean Distance between points P1 and P2 and format your answer to display 4 decimal digits.

SELECT ROUND(SQRT(POWER((B-A),2)+POWER((D-C),2)),4) AS EUCLIDEAN_DISTANCE
FROM
(
    SELECT
        MIN(LAT_N) AS A,
        MAX(LAT_N) AS B,
        MIN(LONG_W) AS C,
        MAX(LONG_W) AS D
    FROM STATION
);

-- Expected Output:
-- 184.1616