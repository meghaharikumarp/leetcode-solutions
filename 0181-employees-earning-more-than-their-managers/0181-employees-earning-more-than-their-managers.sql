# Write your MySQL query statement below
  
SELECT e2.name employee
from employee e1
inner join employee e2 on e1.id =e2.managerId
where e1.salary<e2.salary;

SELECT E2.name AS Employee
FROM Employee E1
JOIN Employee E2
ON E1.id = E2.managerId
WHERE E2.salary > E1.salary;
