-- Difficulty: Easy
-- Language: Oracle

-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780.
-- Round your answer to 4 decimal places.

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N IN
(
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7780
);

-- Expected Output:
-- 70.1378