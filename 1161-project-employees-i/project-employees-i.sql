# Write your MySQL query statement below
Select P.project_id, round(AVg(E.experience_years),2) as average_years from project P
left join Employee E on P.employee_id = E.employee_id
group by P.project_id
