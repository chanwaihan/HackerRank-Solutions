-- Difficulty: Easy
-- Language: Oracle

SELECT NAME
FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTR(NAME, -3, 3), ID;

-- Expected Output:
-- Stuart 
-- Kristeen 
-- Christene 
-- Amina 
-- Aamina 
-- Priya 
-- Heraldo 
-- Scarlet 
-- Julia 
-- Salma 
-- Britney 
-- Priyanka 
-- Samantha 
-- Vivek 
-- Belvet 
-- Devil 
-- Evil