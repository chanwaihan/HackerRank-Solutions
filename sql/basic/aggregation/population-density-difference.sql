-- Difficulty: Easy
-- Language: Oracle

-- Query the difference between the maximum and minimum populations in CITY.

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;

-- Expected Output:
-- 4695354