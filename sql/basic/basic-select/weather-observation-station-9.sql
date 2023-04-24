-- Difficulty: Easy
-- Language: Oracle

-- Query the list of CITY names from STATION that do not start with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(upper(CITY),1,1) NOT IN ('A','E','I','O','U');

-- Expected Output:
-- Baileyville 
-- Bainbridge 
-- Baker 
-- Baldwin 
-- Barrigada 
-- Bass Harbor 
-- Baton Rouge 
-- Bayville 
-- Beaufort 
-- Beaver Island 
-- Bellevue 
-- Benedict 
-- Bennington 
-- Bentonville 
-- Berryton 
-- Bertha 
-- Beverly 
-- Biggsville 
-- Bison 
-- Blue River {-truncated-}
