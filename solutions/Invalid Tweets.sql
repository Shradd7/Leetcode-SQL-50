-- LeetCode Problem: [Invalid Tweets]
-- Link: https://leetcode.com/problems/invalid-tweets/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy


SELECT tweet_id
FROM Tweets 
WHERE CHAR_LENGTH(content) > 15;
-- Length is for calculating size in bits but Charlength is for counting no of charecters