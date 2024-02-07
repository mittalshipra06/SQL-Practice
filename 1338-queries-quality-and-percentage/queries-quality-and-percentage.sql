# Write your MySQL query statement below
Select Q.query_name, round((avg(Q.rating/Q.position)),2) as quality, 
round((sum(if((Q.rating<3),1,0))*100/count(*)),2) as poor_query_percentage 
from Queries Q where Q.query_name is not null
group by Q.query_name