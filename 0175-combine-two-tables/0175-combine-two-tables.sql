# Write your MySQL query statement below
SELECT P.firstName,P.lastName,A.City,A.State
From Person P
LEFT JOIN Address A
ON P.PersonId=A.PersonId;
