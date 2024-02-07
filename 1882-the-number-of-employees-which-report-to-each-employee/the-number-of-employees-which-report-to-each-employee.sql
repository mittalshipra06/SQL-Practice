# Write your MySQL query statement below
select A.employee_id, A.name, count(B.employee_id) as reports_count, 
round(avg(B.age),0) as average_age
from Employees A
inner join Employees B on B.reports_to = A.employee_id
group by B.reports_to order by A.employee_id
