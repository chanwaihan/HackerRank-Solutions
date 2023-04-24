-- Difficulty: Medium
-- Language: Oracle

-- Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy:
--   Founder -> Lead Manager -> Senior Manager -> Manager -> Employee

-- Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, 
-- total number of senior managers, total number of managers, and total number of employees. 
-- Order your output by ascending company_code.

SELECT
    C.COMPANY_CODE,
    C.FOUNDER,
    COUNT(DISTINCT L.LEAD_MANAGER_CODE) AS NUM_LEAD_MANAGER,
    COUNT(DISTINCT S.SENIOR_MANAGER_CODE) AS NUM_SENIOR_MANAGER,
    COUNT(DISTINCT M.MANAGER_CODE) AS NUM_MANAGER,
    COUNT(DISTINCT E.EMPLOYEE_CODE) AS NUM_EMPLOYEE
FROM
    COMPANY C
    JOIN LEAD_MANAGER L ON C.COMPANY_CODE = L.COMPANY_CODE
    JOIN SENIOR_MANAGER S ON C.COMPANY_CODE = S.COMPANY_CODE AND L.LEAD_MANAGER_CODE = S.LEAD_MANAGER_CODE
    JOIN MANAGER M ON C.COMPANY_CODE = M.COMPANY_CODE AND L.LEAD_MANAGER_CODE = M.LEAD_MANAGER_CODE AND S.SENIOR_MANAGER_CODE = M.SENIOR_MANAGER_CODE 
    JOIN EMPLOYEE E ON C.COMPANY_CODE = E.COMPANY_CODE AND L.LEAD_MANAGER_CODE = E.LEAD_MANAGER_CODE AND S.SENIOR_MANAGER_CODE = E.SENIOR_MANAGER_CODE AND E.MANAGER_CODE = M.MANAGER_CODE
GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY C.COMPANY_CODE;

-- Expected Output:
-- C1 Angela 1 2 5 13 
-- C10 Earl 1 1 2 3 
-- C100 Aaron 1 2 4 10 
-- C11 Robert 1 1 1 1 
-- C12 Amy 1 2 6 14 
-- C13 Pamela 1 2 5 14 
-- C14 Maria 1 1 3 5 
-- C15 Joe 1 1 2 3 
-- C16 Linda 1 1 3 5 
-- C17 Melissa 1 2 3 7 
-- C18 Carol 1 2 5 6 
-- C19 Paula 1 2 4 7 
-- C2 Frank 1 1 1 3 
-- C20 Marilyn 1 1 2 2 
-- C21 Jennifer 1 1 3 7 
-- C22 Harry 1 1 3 6 
-- C23 David 1 1 1 2 
-- C24 Julia 1 1 2 6 
-- C25 Kevin 1 1 2 5 
-- C26 Paul 1 1 1 3 {-truncated-}