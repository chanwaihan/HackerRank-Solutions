-- Difficult: Easy
-- Langugage: Oracle

-- Query the total population of all cities in CITY where District is California.

SELECT SUM(POPULATION)
FROM CITY
WHERE UPPER(DISTRICT) = 'CALIFORNIA';

-- Expected Output:
-- 339002 