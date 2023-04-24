-- Difficulty: Medium
-- Language: Oracle

-- Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically
-- and displayed underneath its corresponding Occupation.
-- The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

-- Note: Print NULL when there are no more names corresponding to an occupation.

SELECT DC, PR, SN, AC
FROM
(
    SELECT OCCUPATION, NAME, ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS RN
    FROM OCCUPATIONS
)
PIVOT
(
    MAX(NAME)
    FOR OCCUPATION IN ('Doctor' AS "DC",'Professor' AS "PR",'Singer' AS "SN",'Actor' AS "AC")
)
ORDER BY RN;

-- Expected Output:
-- Aamina Ashley Christeen Eve 
-- Julia Belvet Jane Jennifer 
-- Priya Britney Jenny Ketty 
-- NULL Maria Kristeen Samantha 
-- NULL Meera NULL NULL 
-- NULL Naomi NULL NULL 
-- NULL Priyanka NULL NULL