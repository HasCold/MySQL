-- Table Record :- 

SELECT * FROM employees;
+--------+----------------+-------------------+-----------+--------+
| emp_id | fullName       | desig             | dept      | salary |
+--------+----------------+-------------------+-----------+--------+
|      1 | Hasan          | Probation         | IT (Tech) |  75000 |
|      2 | Umer           | Probation         | Cash      |  52000 |
|      4 | Saad           | Accountant        | Deposit   |  25000 |
|      5 | Huzaifa        | Cashier           | Accounts  |  32000 |
|      6 | Ayesha Bangali | Software Engineer | IT (Tech) |  25000 |
|      7 | Umer           | Accounts Officer  | Accounts  |  52000 |
|      8 | Hafsa          | Cashier           | Accounts  |  25000 |
+--------+----------------+-------------------+-----------+--------+

----------------------------------------------------------------------------------------------------------------

SELECT DISTINCT(desig) AS Designation, SUM(salary) AS total_spent, COUNT(desig) AS No_of_person FROM employees
GROUP BY desig
ORDER BY total_spent DESC;

-- Output :-
+-------------------+-------------+--------------+
| Designation       | total_spent | No_of_person |
+-------------------+-------------+--------------+
| Probation         |      127000 |            2 |
| Cashier           |       57000 |            2 |
| Accounts Officer  |       52000 |            1 |
| Accountant        |       25000 |            1 |
| Software Engineer |       25000 |            1 |
+-------------------+-------------+--------------+