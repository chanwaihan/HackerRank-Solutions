-- Difficulty: Medium
-- Language: Oracle

-- Consider P1(a,b) and P2(c,d) to be two points on a 2D plane.
--   a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
--   b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
--   c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
--   d happens to equal the maximum value in Western Longitude (LONG_W in STATION).

-- Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.

SELECT ROUND(ABS(A-C)+ABS(B-D), 4) AS MANHATTAN_DISTANCE
FROM
(
    SELECT
        MIN(LAT_N) AS A,
        MIN(LONG_W) AS B,
        MAX(LAT_N) AS C,
        MAX(LONG_W) AS D
    FROM STATION
);


-- Expected Output:
-- 259.6859