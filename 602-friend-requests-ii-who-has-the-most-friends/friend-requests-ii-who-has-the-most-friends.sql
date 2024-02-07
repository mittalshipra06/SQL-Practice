# Write your MySQL query statement below
with A as 
(Select requester_id, count(*) as cnt from requestAccepted
group by requester_id
union all
Select accepter_id, count(*)  from requestAccepted
group by accepter_id) 
/*----------------------------*/
Select A.requester_id as id, sum(A.cnt) as num from A
group by id order by num desc limit 1