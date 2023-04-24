-- Difficulty: Easy
-- Language: Oracle

-- Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(upper(CITY),1,1) NOT IN ('A','E','I','O','U')
    OR SUBSTR(upper(CITY),-1,1) NOT IN ('A','E','I','O','U');

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
-- Baileyville 
-- Bainbridge 
-- Baker 
-- Baldwin 
-- Barrigada 
-- Bass Harbor {-truncated-}
