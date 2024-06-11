# Write your MySQL query statement below
select distinct L1.num as ConsecutiveNums from Logs L1, Logs L2, Logs L3
where L1.id = L2.id - 1 and L2.id = L3.id - 1
and L1.num = L2.num and L2.num = L3.num;
/*with cte as
(
select id, num, lead(num) over(order by id) as next, lag(num) over(order by id) as prev
from Logs
) 
select distinct num as ConsecutiveNums from cte where num = next and num = prev;
*/