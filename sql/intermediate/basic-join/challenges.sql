-- Difficulty: Medium
-- Language: Oracle

-- Julia asked her students to create some coding challenges.
-- Write a query to print the hacker_id, name, and the total number of challenges created by each student.
-- Sort your results by the total number of challenges in descending order.
-- If more than one student created the same number of challenges, then sort the result by hacker_id.
-- If more than one student created the same number of challenges and the count is less than the maximum number of challenges created,
-- then exclude those students from the result.

WITH HACKER_CHALLENGES AS (
    SELECT
        H.HACKER_ID AS HACKER_ID,
        H.NAME AS NAME,
        COUNT(C.CHALLENGE_ID) AS CHALLENGES_CREATED
    FROM HACKERS H JOIN CHALLENGES C ON H.HACKER_ID = C.HACKER_ID
    GROUP BY H.HACKER_ID, H.NAME
    )
SELECT
    HACKER_ID,
    NAME,
    CHALLENGES_CREATED
FROM HACKER_CHALLENGES
WHERE CHALLENGES_CREATED IN (
    SELECT CHALLENGES_CREATED
    FROM HACKER_CHALLENGES
    GROUP BY CHALLENGES_CREATED
    HAVING COUNT(*) = 1
    )
    OR CHALLENGES_CREATED = (
    SELECT MAX(CHALLENGES_CREATED)
    FROM HACKER_CHALLENGES
    )
ORDER BY CHALLENGES_CREATED DESC, HACKER_ID;

-- Expected Output:
-- 5120 Julia 50 
-- 18425 Anna 50 
-- 20023 Brian 50 
-- 33625 Jason 50 
-- 41805 Benjamin 50 
-- 52462 Nicholas 50 
-- 64036 Craig 50 
-- 69471 Michelle 50 
-- 77173 Mildred 50 
-- 94278 Dennis 50 
-- 96009 Russell 50 
-- 96716 Emily 50 
-- 72866 Eugene 42 
-- 37068 Patrick 41 
-- 12766 Jacqueline 40 
-- 86280 Beverly 37 
-- 19835 Joyce 36 
-- 38316 Walter 35 
-- 29483 Jeffrey 34 
-- 23428 Arthur 33 {-truncated-}