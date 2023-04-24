-- Difficulty: Easy
-- Language: Oracle

-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION.
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY
FROM STATION
WHERE upper(CITY) LIKE '%A'
    OR upper(CITY) LIKE '%E'
    OR upper(CITY) LIKE '%I'
    OR upper(CITY) LIKE '%O'
    OR upper(CITY) LIKE '%U';

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
-- Baileyville 
-- Bainbridge 
-- Barrigada 
-- Baton Rouge 
-- Bayville 
-- Bellevue 
-- Bentonville 
-- Bertha {-truncated-}
