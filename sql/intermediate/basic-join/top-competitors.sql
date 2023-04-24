-- Difficulty: Medium
-- Language: Oracle

-- Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard!
-- Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge.
-- Order your output in descending order by the total number of challenges in which the hacker earned a full score.
-- If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

SELECT
    S.HACKER_ID,
    H.NAME
FROM
    SUBMISSIONS S
    JOIN HACKERS H ON S.HACKER_ID = H.HACKER_ID
    JOIN CHALLENGES C ON S.CHALLENGE_ID = C.CHALLENGE_ID
    JOIN DIFFICULTY D ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
WHERE D.SCORE = S.SCORE
GROUP BY S.HACKER_ID, H.NAME
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC, S.HACKER_ID;

-- Expected Output:
-- 27232 Phillip 
-- 28614 Willie 
-- 15719 Christina 
-- 43892 Roy 
-- 14246 David 
-- 14372 Michelle 
-- 18330 Lawrence 
-- 26133 Jacqueline 
-- 26253 John 
-- 30128 Brandon 
-- 35583 Norma 
-- 13944 Victor 
-- 17295 Elizabeth 
-- 19076 Matthew 
-- 26895 Evelyn 
-- 32172 Jonathan 
-- 41293 Robin 
-- 45386 Christina 
-- 45785 Jesse 
-- 49652 Christine {-truncated-}