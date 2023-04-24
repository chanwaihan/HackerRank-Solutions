-- Difficulty: Easy
-- Language: Oracle

-- Query the average population for all cities in CITY, rounded down to the nearest integer.

SELECT ROUND(AVG(POPULATION))
FROM CITY;

-- Expected Output:
-- 454250