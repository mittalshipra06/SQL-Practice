# Write your MySQL query statement below
Select * from Users where 
mail regexp '^[a-zA-Z][a-zA-Z0-9\.\_\-]*@leetcode[\.]com$'