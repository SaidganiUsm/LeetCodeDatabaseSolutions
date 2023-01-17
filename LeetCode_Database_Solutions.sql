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