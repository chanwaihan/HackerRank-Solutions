-- Difficulty: Medium
-- Language: Oracle

-- You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

-- The total score of a hacker is the sum of their maximum scores for all of the challenges.
-- Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score.
-- If more than one hacker achieved the same total score, then sort the result by ascending hacker_id.
-- Exclude all hackers with a total score of 0 from your result.

SELECT
    HACKER_ID,
    NAME,
    SUM(SCORE)
FROM
(
    SELECT
    H.HACKER_ID AS HACKER_ID,
    H.NAME AS NAME,
    MAX(S.SCORE) AS SCORE
    FROM HACKERS H JOIN SUBMISSIONS S ON H.HACKER_ID = S.HACKER_ID
    GROUP BY H.HACKER_ID, H.NAME, S.CHALLENGE_ID
)
GROUP BY HACKER_ID, NAME
HAVING SUM(SCORE) > 0
ORDER BY SUM(SCORE) DESC, HACKER_ID;

-- Expected Output:
-- 76971 Ashley 760 
-- 84200 Susan 710 
-- 76615 Ryan 700 
-- 82382 Sara 640 
-- 79034 Marilyn 580 
-- 78552 Harry 570 
-- 74064 Helen 540 
-- 78688 Sean 540 
-- 83832 Jason 540 
-- 72796 Jose 510 
-- 76216 Carlos 510 
-- 90304 Lillian 500 
-- 88507 Patrick 490 
-- 72505 Keith 480 
-- 88018 Dennis 480 
-- 78918 Julia 470 
-- 85319 Shawn 470 
-- 71357 Bobby 460 
-- 72047 Elizabeth 460 
-- 74147 Jason 460 {-truncated-}