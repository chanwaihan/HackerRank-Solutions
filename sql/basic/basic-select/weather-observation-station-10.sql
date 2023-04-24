-- Difficulty: Easy
-- Language: Oracle

-- Query the list of CITY names from STATION that do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(upper(CITY),-1,1) NOT IN ('A','E','I','O','U');

-- Expected Output:
-- Addison 
-- Agency 
-- Alanson 
-- Albany 
-- Albion 
-- Algonac 
-- Allerton 
-- Alton 
-- Andover 
-- Anthony 
-- Arlington 
-- Arrowsmith 
-- Athens 
-- Auburn 
-- Baker 
-- Baldwin 
-- Bass Harbor 
-- Beaufort 
-- Beaver Island 
-- Benedict {-truncated-}
