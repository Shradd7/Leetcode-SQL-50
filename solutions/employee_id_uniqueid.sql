 -- LeetCode Problem: [employee-id]
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy

SELECT e.name, eu.unique_id
FROM Employees e
LEFT OUTER JOIN EmployeeUNI eu
ON e.id=eu.id;