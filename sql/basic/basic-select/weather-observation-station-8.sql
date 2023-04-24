-- Difficulty: Easy
-- Language: Oracle

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
-- Your result cannot contain duplicates.

SELECT CITY
FROM STATION
WHERE SUBSTR(upper(CITY),1,1) IN ('A','E','I','O','U')
    AND SUBSTR(upper(CITY),-1,1) IN ('A','E','I','O','U');

-- Expected Output:
-- Acme 
-- Aguanga 
-- Alba 
-- Aliso Viejo 
-- Alpine 
-- Amazonia 
-- Amo 
-- Andersonville 
-- Archie 
-- Arispe 
-- Arkadelphia 
-- Atlantic Mine 
-- East China 
-- East Irvine 
-- Eastlake 
-- Eleele 
-- Elm Grove 
-- Eriline 
-- Ermine 
-- Eskridge {-truncated-}
