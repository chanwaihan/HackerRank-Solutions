-- Difficulty: Easy
-- Language: Oracle

-- Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

SELECT C1.NAME
FROM CITY C1 JOIN COUNTRY C2 ON C1.COUNTRYCODE = C2.CODE
    AND UPPER(CONTINENT) = 'AFRICA';

-- Expected Output:
-- Qina 
-- Warraq al-Arab 
-- Kempton Park 
-- Alberton 
-- Klerksdorp 
-- Uitenhage 
-- Brakpan 
-- Libreville 