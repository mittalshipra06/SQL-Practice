# Write your MySQL query statement below
select max(num) as num from MyNumbers where num in 
(select num from MyNUmbers group by num having count(*) = 1);