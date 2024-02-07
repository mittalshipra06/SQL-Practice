# Write your MySQL query statement below
Select A1.machine_id, Round(AVG(A2.timestamp-A1.timestamp),3) as processing_time 
from Activity A1, Activity A2
where A1.machine_id = A2.machine_id
And A1.process_id = A2.process_id
And A1.activity_type = 'start'
AND A2.activity_type = 'end'
group by A1.machine_id