# Write your MySQL query statement below
Select A.student_id, A.student_name, B.subject_name, 
count(C.subject_name) as attended_exams
from Students A cross join Subjects B left join Examinations C 
on A.student_id = C.student_id and B.subject_name = C.subject_name
group by A.student_id, A.student_name, B.subject_name
order by A.student_id, A.student_name