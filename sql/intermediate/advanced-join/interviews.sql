-- Difficulty: Hard
-- Language: Oracle

-- Samantha interviews many candidates from different colleges using coding challenges and contests.
-- Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions,
-- total_accepted_submissions, total_views, and total_unique_views for each contest sorted by contest_id.
-- Exclude the contest from the result if all four sums are 0.

-- Note: A specific contest can be used to screen candidates at more than one college, but each college only holds 1 screening contest.

SELECT
    C1.CONTEST_ID AS CONTEST_ID,
    C1.HACKER_ID AS HACKER_ID,
    C1.NAME AS NAME,
    SUM(S.TOTAL_SUBMISSIONS) AS TOTAL_SUBMISSIONS,
    SUM(S.TOTAL_ACCEPTED_SUBMISSIONS) AS TOTAL_ACCEPTED_SUBMISSIONS,
    SUM(V.TOTAL_VIEWS) AS TOTAL_VIEWS,
    SUM(V.TOTAL_UNIQUE_VIEWS) AS TOTAL_UNIQUE_VIEWS
FROM
    CONTESTS C1
    JOIN COLLEGES C2 ON C2.CONTEST_ID = C1.CONTEST_ID
    JOIN CHALLENGES C3 ON C3.COLLEGE_ID = C2.COLLEGE_ID
    LEFT JOIN (
        SELECT
            CHALLENGE_ID,
            SUM(TOTAL_SUBMISSIONS) AS TOTAL_SUBMISSIONS,
            SUM(TOTAL_ACCEPTED_SUBMISSIONS) AS TOTAL_ACCEPTED_SUBMISSIONS
        FROM SUBMISSION_STATS
        GROUP BY CHALLENGE_ID
    ) S
    ON S.CHALLENGE_ID = C3.CHALLENGE_ID
    LEFT JOIN (
        SELECT
            CHALLENGE_ID,
            SUM(TOTAL_VIEWS) AS TOTAL_VIEWS,
            SUM(TOTAL_UNIQUE_VIEWS) AS TOTAL_UNIQUE_VIEWS
        FROM VIEW_STATS
        GROUP BY CHALLENGE_ID
    ) V
    ON V.CHALLENGE_ID = C3.CHALLENGE_ID
GROUP BY C1.CONTEST_ID, C1.HACKER_ID, C1.NAME
HAVING
    SUM(S.TOTAL_SUBMISSIONS) +
    SUM(S.TOTAL_ACCEPTED_SUBMISSIONS) +
    SUM(V.TOTAL_VIEWS) + 
    SUM(V.TOTAL_UNIQUE_VIEWS) != 0
ORDER BY C1.CONTEST_ID;

-- Expected Output:
-- 845 579 Rose 1987 580 1635 566 
-- 858 1053 Angela 703 160 1002 384 
-- 883 1055 Frank 1121 319 1217 338 
-- 1793 2655 Patrick 1337 360 1216 412 
-- 2374 2765 Lisa 2733 815 3368 904 
-- 2963 2845 Kimberly 4306 1221 3603 1184 
-- 3584 2873 Bonnie 2492 652 3019 954 
-- 4044 3067 Michael 1323 449 1722 528 
-- 4249 3116 Todd 1452 376 1767 463 
-- 4269 3256 Joe 1018 372 1766 530 
-- 4483 3386 Earl 1911 572 1644 477 
-- 4541 3608 Robert 1886 516 1694 504 
-- 4601 3868 Amy 1900 639 1738 548 
-- 4710 4255 Pamela 2752 639 2378 705 
-- 4982 5639 Maria 2705 759 2558 711 
-- 5913 5669 Joe 2646 790 3181 835 
-- 5994 5713 Linda 3369 967 3048 954 
-- 6939 6550 Melissa 2842 859 3574 1004 
-- 7266 6947 Carol 2758 665 3044 835 
-- 7280 7030 Paula 1963 554 886 259 {-truncated-}