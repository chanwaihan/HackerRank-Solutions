-- Difficulty: Easy
-- Language: Oracle

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE upper(CITY) LIKE 'A%'
    OR upper(CITY) LIKE 'E%'
    OR upper(CITY) LIKE 'I%'
    OR upper(CITY) LIKE 'O%'
    OR upper(CITY) LIKE 'U%';

-- Expected Output:
-- Acme 
-- Addison 
-- Agency 
-- Aguanga 
-- Alanson 
-- Alba 
-- Albany 
-- Albion 
-- Algonac 
-- Aliso Viejo 
-- Allerton 
-- Alpine 
-- Alton 
-- Amazonia 
-- Amo 
-- Andersonville 
-- Andover 
-- Anthony 
-- Archie 
-- Arispe {-truncated-}
