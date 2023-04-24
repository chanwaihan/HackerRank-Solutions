-- Difficulty: Medium
-- Language: Oracle

-- You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date.
-- It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

-- If the End_Date of the tasks are consecutive, then they are part of the same project.
-- Samantha is interested in finding the total number of different projects completed.

-- Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order.
-- If there is more than one project that have the same number of completion days, then order by the start date of the project.

SELECT
    START_DATE AS START_DATE,
    MIN(END_DATE) AS END_DATE
FROM
(
    SELECT START_DATE
    FROM PROJECTS
    WHERE START_DATE NOT IN (SELECT END_DATE FROM PROJECTS)
),
(
    SELECT END_DATE
    FROM PROJECTS
    WHERE END_DATE NOT IN (SELECT START_DATE FROM PROJECTS)
)
WHERE START_DATE < END_DATE
GROUP BY START_DATE
ORDER BY END_DATE - START_DATE, START_DATE;

-- Expected Output:
-- 2015-10-15 2015-10-16 
-- 2015-10-17 2015-10-18 
-- 2015-10-19 2015-10-20 
-- 2015-10-21 2015-10-22 
-- 2015-11-01 2015-11-02 
-- 2015-11-17 2015-11-18 
-- 2015-10-11 2015-10-13 
-- 2015-11-11 2015-11-13 
-- 2015-10-01 2015-10-05 
-- 2015-11-04 2015-11-08 
-- 2015-10-25 2015-10-31