 -- LeetCode Problem: [Problem Big Countries]
-- Link: https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy

SELECT name, population, area
FROM World
WHERE AREA >= 3000000 OR POPULATION >= 25000000;
