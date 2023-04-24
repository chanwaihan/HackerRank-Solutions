-- Difficulty: Easy
-- Language: Oracle

-- Query the sum of the populations for all Japanese cities in CITY.
-- The COUNTRYCODE for Japan is JPN.

SELECT SUM(POPULATION)
FROM CITY
WHERE UPPER(COUNTRYCODE) = 'JPN';

-- Expected Output:
-- 879196