-- Difficulty: Medium
-- Language: Oracle

-- You are given two tables: Students and Grades.
-- Students contains three columns ID, Name and Marks.

-- Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark.
-- Ketty doesn't want the NAMES of those students who received a grade lower than 8.
-- The report must be in descending order by grade -- i.e. higher grades are entered first.
-- If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically.
-- Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order.
-- If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

-- Write a query to help Eve.

SELECT
    CASE
    WHEN G.GRADE < 8 THEN REPLACE(S.NAME, S.NAME, NULL)
    ELSE S.NAME
    END AS NAME,
    G.GRADE AS GRADE,
    S.MARKS AS MARK
FROM STUDENTS S JOIN GRADES G ON S.MARKS >= G.MIN_MARK AND S.MARKS <= G.MAX_MARK
ORDER BY
    CASE WHEN G.GRADE < 8 THEN G.GRADE END DESC,
    CASE WHEN G.GRADE >= 8 THEN G.GRADE END DESC,
    S.NAME ASC, S.MARKS ASC;

-- Expected Output:
-- Britney 10 95 
-- Heraldo 10 94 
-- Julia 10 96 
-- Kristeen 10 100 
-- Stuart 10 99 
-- Amina 9 89 
-- Christene 9 88 
-- Salma 9 81 
-- Samantha 9 87 
-- Scarlet 9 80
-- Vivek 9 84 
-- Aamina 8 77 
-- Belvet 8 78 
-- Paige 8 74 
-- Priya 8 76 
-- Priyanka 8 77  
-- NULL 7 64 
-- NULL 7 66 
-- NULL 6 55 
-- NULL 4 34 {-truncated-}