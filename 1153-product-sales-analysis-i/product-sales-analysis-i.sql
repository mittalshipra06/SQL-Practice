# Write your MySQL query statement below
Select  P.product_name, S.year, S.price from Sales S
join Product P on P.product_id = S.product_id