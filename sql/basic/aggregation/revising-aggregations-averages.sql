-- Difficulty: Easy
-- Language: Oracle

-- Query the average population of all cities in CITY where District is California.

SELECT AVG(POPULATION)
FROM CITY
WHERE UPPER(DISTRICT) = 'CALIFORNIA';

-- Expected Output:
-- 113000.667