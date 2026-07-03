# Write your MySQL query statement below
     #1
SELECT e2.name employee
from employee e1
inner join employee e2 on e1.id =e2.managerId
where e1.salary<e2.salary;
      #2
SELECT E2.name AS Employee
FROM Employee E1
JOIN Employee E2
ON E1.id = E2.managerId
WHERE E2.salary > E1.salary;
      #3
SELECT e1.name Employee
FROM Employee e1
WHERE e1.salary > (
    SELECT e2.salary
    FROM Employee e2
    WHERE e2.id = e1.managerId
);
