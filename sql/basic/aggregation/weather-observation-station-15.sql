-- Difficulty: Easy
-- Language: Oracle

-- Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345.
-- Round your answer to 4 decimal places.

-- SELECT *
-- FROM
-- (
--     SELECT ROUND(LONG_W, 4)
--     FROM STATION
--     WHERE LAT_N < 137.2345
--     ORDER BY LAT_N DESC
-- )
-- WHERE ROWNUM = 1;

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N IN
(
    SELECT MAX(LAT_N)
    FROM STATION
    WHERE LAT_N < 137.2345
);

-- Expected Output:
-- 117.2465