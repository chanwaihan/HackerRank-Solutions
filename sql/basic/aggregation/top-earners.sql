-- Difficulty: Easy
-- Language: Oracle

-- We define an employee's total earnings to be their monthly salary x months worked,
-- and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
-- Write a query to find the maximum total earnings for all employees as well as
-- the total number of employees who have maximum total earnings.
-- Then print these values as 2 space-separated integers.

-- SELECT MAX(TOTAL_EARNINGS), MAX(COUNT_EMPLOYEE_ID)
-- FROM
-- (
--     SELECT
--         SALARY*MONTHS AS TOTAL_EARNINGS,
--         COUNT(EMPLOYEE_ID) AS COUNT_EMPLOYEE_ID
--     FROM EMPLOYEE
--     GROUP BY SALARY*MONTHS
--     ORDER BY TOTAL_EARNINGS DESC
-- );

SELECT *
FROM
(
    SELECT
        SALARY*MONTHS AS TOTAL_EARNINGS,
        COUNT(EMPLOYEE_ID) AS COUNT_EMPLOYEE_ID
    FROM EMPLOYEE
    GROUP BY SALARY*MONTHS
    ORDER BY TOTAL_EARNINGS DESC
)
WHERE ROWNUM = 1;

-- Expected Output:
-- 108064 7