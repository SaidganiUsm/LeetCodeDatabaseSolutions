# 183. Customers Who Never Order
# Write your MySQL query statement below
SELECT name AS Customers FROM Customers
WHERE
    id
NOT IN(
    SELECT CustomerId FROM Orders
);

# 175. Combine Two Tables
# Write your MySQL query statement below
SELECT FirstName, LastName, City, State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId

# 181. Employees Earning More Than Their Managers
# Write your MySQL query statement below
SELECT a.Name AS `Employee`
FROM `Employee` AS a join `Employee` AS b
ON a.ManagerId = b.Id
AND a.Salary > b.Salary

# 182. Duplicate Emails
# Write your MySQL query statement below
SELECT email AS Email FROM Person
GROUP BY Email HAVING COUNT(*) > 1

# 511. Game Play Analysis I
# Write your MySQL query statement below
SELECT player_id, MIN(event_date) AS first_login FROM Activity
GROUP BY player_id

# 586. Customer Placing the Largest Number of Orders
# Write your MySQL query statement below
SELECT customer_number FROM Orders
GROUP BY customer_number ORDER BY COUNT(*) DESC LIMIT 1

# 584. Find Customer Referee
# Write your MySQL query statement below
SELECT name FROM Customer
WHERE referee_id IS NULL OR referee_id != 2

# 1527. Patients With a Condition
# Write your MySQL query statement below
SELECT patient_id, patient_name, conditions FROM Patients
WHERE conditions LIKE '% DIAB1%' OR conditions like'DIAB1%'

# 595. Big Countries
# Write your MySQL query statement below
SELECT `name`,`population`,`area` FROM `World` 
WHERE `population`>= 25000000 OR `area`>3000000
