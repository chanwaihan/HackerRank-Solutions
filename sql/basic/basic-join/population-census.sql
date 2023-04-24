-- Difficulty: Easy
-- Language: Oracle

-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT SUM(C1.POPULATION) AS SUM_POPULATION
FROM CITY C1 FULL OUTER JOIN COUNTRY C2 ON C1.COUNTRYCODE = C2.CODE
WHERE UPPER(CONTINENT) = 'ASIA';

-- Expected Output:
-- 27028484