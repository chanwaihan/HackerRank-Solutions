-- Difficulty: Easy
-- Language: Oracle

-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
-- Output one of the following statements for each record in the table:
--     Equilateral: It's a triangle with  sides of equal length.
--     Isosceles: It's a triangle with  sides of equal length.
--     Scalene: It's a triangle with  sides of differing lengths.
--     Not A Triangle: The given values of A, B, and C don't form a triangle.

SELECT
    CASE
        WHEN ((A+B)<=C OR (A+C)<=B OR (B+C)<=A)
        THEN 'Not A Triangle'
        WHEN (A=B AND B=C )
        THEN 'Equilateral'
        WHEN (A!=B AND B!=C AND A!=C)
        THEN 'Scalene'
        WHEN ((A=B AND A!=C) OR (B=C AND B!=A) OR (A=C AND A!=B))
        THEN 'Isosceles'
    END
FROM TRIANGLES;

-- Expected Output:
-- Equilateral 
-- Equilateral 
-- Isosceles 
-- Equilateral 
-- Isosceles 
-- Equilateral 
-- Scalene 
-- Not A Triangle 
-- Scalene 
-- Scalene 
-- Scalene 
-- Not A Triangle 
-- Not A Triangle 
-- Scalene 
-- Equilateral