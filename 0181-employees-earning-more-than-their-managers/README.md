<h2><a href="https://leetcode.com/problems/employees-earning-more-than-their-managers">181. Employees Earning More Than Their Managers</a></h2><h3>Easy</h3><hr><p>Table: <code>Employee</code></p>

<pre>
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
</pre>

<p>&nbsp;</p>

<p>Write a solution&nbsp;to find the employees who earn more than their managers.</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The result format is in the following example.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre>
<strong>Input:</strong> 
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
<strong>Output:</strong> 
+----------+
| Employee |
+----------+
| Joe      |
+----------+
<strong>Explanation:</strong> Joe is the only employee who earns more than his manager.
</pre>
----------------------------------------------------------------------------------------------------------------------------------
<strong><center>💡 Explanation </center></strong>

- This problem requires comparing an employee's salary with their manager's salary.

- Since both pieces of information are stored in the same table, we use a Self JOIN.
     E1 acts as the manager record.
     E2 acts as the employee record.

- E1.id = E2.managerId connects each employee to their corresponding manager.

- After establishing the relationship, we compare salaries using:
      E2.salary > E1.salary
If the employee earns more than their manager, we return the employee's name.
