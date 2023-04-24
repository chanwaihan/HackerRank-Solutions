-- Difficulty: Medium
-- Language: Oracle

-- You are given three tables: Students, Friends and Packages.
-- Students contains two columns: ID and Name.
-- Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend).
-- Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

-- Write a query to output the names of those students whose best friends got offered a higher salary than them.
-- Names must be ordered by the salary amount offered to the best friends.
-- It is guaranteed that no two students got same salary offer.

WITH STUDENTS_SALARY AS (
    SELECT
        S1.ID AS ID,
        S1.NAME AS NAME,
        P1.SALARY AS SALARY,
        F1.FRIEND_ID AS FRIEND_ID
    FROM STUDENTS S1
        JOIN FRIENDS F1 ON S1.ID = F1.ID
        JOIN PACKAGES P1 ON S1.ID = P1.ID
), FRIENDS_SALARY AS (
    SELECT
        F2.FRIEND_ID AS FRIEND_ID,
        P2.SALARY AS FRIEND_SALARY
    FROM FRIENDS F2 JOIN PACKAGES P2 ON F2.FRIEND_ID = P2.ID
)
SELECT S.NAME AS NAME
FROM STUDENTS_SALARY S JOIN FRIENDS_SALARY F ON S.FRIEND_ID = F.FRIEND_ID
WHERE F.FRIEND_SALARY > S.SALARY
ORDER BY F.FRIEND_SALARY;

-- Expected Output:
-- Stuart 
-- Priyanka 
-- Paige 
-- Jane 
-- Julia 
-- Belvet 
-- Amina 
-- Kristeen 
-- Scarlet 
-- Priya 
-- Meera