-- LeetCode Problem: [employee-id]
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
SELECT a1.machine_id,ROUND(AVG(a2.timestamp-a1.timestamp),3) processing_time 
FROM  Activity a1
INNER JOIN Activity a2
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
AND a1.timestamp <= a2.timestamp -- This is done to increase the speed of solution, and avoid other time stamps interference 
AND a1.activity_type = 'start' -- This is done to counter edge case where start time = end time.  
AND a2.activity_type = 'end'
GROUP BY a1.machine_id