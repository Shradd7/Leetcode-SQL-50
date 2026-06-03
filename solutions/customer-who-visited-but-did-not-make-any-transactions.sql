-- LeetCode Problem: [employee-id]
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
SELECT v.customer_id, count(v.customer_id) count_no_trans 
FROM visits v
LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id 
WHERE transaction_id is null 
GROUP BY v.customer_id;