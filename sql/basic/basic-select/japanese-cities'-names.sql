-- Difficulty: Easy
-- Language: Oracle

-- Query the names of all the Japanese cities in the CITY table.
-- The COUNTRYCODE for Japan is JPN.

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';

-- Expected Output:
-- Neyagawa 
-- Ageo 
-- Sayama 
-- Omuta 
-- Tokuyama 