-- Difficulty: Medium
-- Language: Oracle

-- Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.

-- Hermione decides the best way to choose is by determining the minimum number of gold galleons needed
-- to buy each non-evil wand of high power and age.
-- Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in,
-- sorted in order of descending power.
-- If more than one wand has same power, sort the result in order of descending age.

SELECT
    W3.ID AS ID,
    W4.AGE AS AGE,
    W3.COINS_NEEDED AS COINS_NEEDED,
    W3.POWER AS WAND_POWER
FROM
    WANDS W3 JOIN WANDS_PROPERTY W4 ON W3.CODE = W4.CODE
WHERE (W4.AGE, W3.COINS_NEEDED, W3.POWER) IN
(
    SELECT
        W2.AGE AS AGE,
        MIN(W1.COINS_NEEDED) AS COINS_NEEDED,
        W1.POWER AS WAND_POWER
    FROM
        WANDS W1 JOIN WANDS_PROPERTY W2 ON W1.CODE = W2.CODE
    WHERE W2.IS_EVIL = 0
    GROUP BY W1.CODE, W1.POWER, W2.AGE
)
ORDER BY W3.POWER DESC, W4.AGE DESC;

-- Expected Output:
-- 1038 496 4789 10 
-- 1130 494 9439 10 
-- 1315 492 4126 10 
-- 9 491 7345 10 
-- 858 483 4352 10 
-- 1164 481 9831 10 
-- 1288 464 4952 10 
-- 861 462 8302 10 
-- 412 455 5625 10 
-- 996 451 8884 10 
-- 1608 446 8351 10 
-- 1376 443 1735 10 
-- 1330 430 5182 10 
-- 1633 425 2206 10 
-- 1197 419 3468 10 
-- 441 416 2508 10 
-- 424 413 997 10 
-- 1298 397 3810 10 
-- 1125 395 2299 10 
-- 333 393 926 10 {-truncated-}