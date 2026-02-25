# Write your MySQL query statement below
select max(E.salary) As SecondHighestSalary
from Employee as E
where E.salary<(Select max(salary)
                from Employee
                order by E.salary
                 )