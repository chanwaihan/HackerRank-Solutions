-- Difficulty: Medium
-- Language: Oracle

-- You are given a table, Functions, containing two columns: X and Y.

-- Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

-- Write a query to output all such symmetric pairs in ascending order by the value of X.
-- List the rows such that X1 ≤ Y1.

SELECT X, Y FROM (
    SELECT X, Y
    FROM FUNCTIONS
    WHERE X = Y
    GROUP BY X, Y
    HAVING COUNT(*) > 1
    UNION
    SELECT A.X, A.Y
    FROM FUNCTIONS A, FUNCTIONS B
    WHERE A.X < A.Y AND A.X = B.Y AND B.X = A.Y
)
ORDER BY X, Y;

-- Expected Output:
-- 2 24 
-- 4 22 
-- 5 21 
-- 6 20 
-- 8 18 
-- 9 17 
-- 11 15
-- 13 13