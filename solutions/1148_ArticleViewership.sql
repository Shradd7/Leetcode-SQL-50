-- LeetCode Problem: [Article Viewership]
-- Link: https://leetcode.com/problems/article-views-i/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy

SELECT  DISTINCT viewer_id AS id 
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC;