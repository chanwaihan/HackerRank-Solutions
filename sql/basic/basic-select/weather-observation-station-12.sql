-- Difficulty: Easy
-- Language: Oracle

-- Query the list of CITY names from STATION that do not start with vowels and do not end with vowels.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE SUBSTR(upper(CITY),1,1) NOT IN ('A','E','I','O','U')
    AND SUBSTR(upper(CITY),-1,1) NOT IN ('A','E','I','O','U');

-- Expected Output:
-- Baker 
-- Baldwin 
-- Bass Harbor 
-- Beaufort 
-- Beaver Island 
-- Benedict 
-- Bennington 
-- Berryton 
-- Beverly 
-- Bison 
-- Blue River 
-- Bowdon 
-- Bowdon Junction 
-- Bridgeport 
-- Bridgton 
-- Brighton 
-- Brilliant 
-- Bristol 
-- Brownstown 
-- Buffalo Creek {-truncated-}
