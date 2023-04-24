-- Difficulty: Easy
-- Language: Oracle

-- Query the two cities in STATION with the shortest and longest CITY names,
-- as well as their respective lengths (i.e.: number of characters in the name).
-- If there is more than one smallest or largest city,
-- choose the one that comes first when ordered alphabetically.

SELECT * FROM (SELECT CITY, LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY) IN (SELECT MIN(LENGTH(CITY)) FROM STATION)
ORDER BY CITY)
WHERE ROWNUM = 1
UNION
SELECT * FROM (SELECT CITY, LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY) IN (SELECT MAX(LENGTH(CITY)) FROM STATION)
ORDER BY CITY)
WHERE ROWNUM = 1;

-- Expected Output:
-- Amo 3
-- Marine On Saint Croix 21