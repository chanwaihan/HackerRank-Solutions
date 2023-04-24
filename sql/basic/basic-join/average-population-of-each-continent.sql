-- Difficulty: Easy
-- Language: Oracle

-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent)
-- and their respective average city populations (CITY.Population) rounded down to the nearest integer.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT DISTINCT C2.CONTINENT, FLOOR(AVG(C1.POPULATION))
FROM CITY C1 JOIN COUNTRY C2 ON C1.COUNTRYCODE = C2.CODE
GROUP BY C2.CONTINENT;

-- Expected Output:
-- Oceania 109189 
-- South America 147435 
-- Europe 175138 
-- Africa 274439 
-- Asia 693038 