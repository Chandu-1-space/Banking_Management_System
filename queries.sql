select*from customers
select*from transactions
select*from accounts
select*from loans
SELECT
c.First_Name,
a.Account_Type,
a.Balance
FROM Customers c
JOIN Accounts a
ON c.Customer_ID=a.Customer_ID;
SELECT
Account_Type,
COUNT(*) AS Accounts_Count
FROM Accounts
GROUP BY Account_Type;
SELECT *
FROM Accounts
WHERE Balance >
(
    SELECT AVG(Balance)
    FROM Accounts
);
CREATE VIEW CustomerAccounts AS
SELECT
c.First_Name,
a.Account_Type,
a.Balance
FROM Customers c
JOIN Accounts a
ON c.Customer_ID=a.Customer_ID;
DELIMITER //

CREATE PROCEDURE GetCustomers()
BEGIN
    SELECT * FROM Customers;
END //

DELIMITER ;
SELECT
Account_ID,
Balance,
RANK() OVER(ORDER BY Balance DESC) AS Balance_Rank
FROM Accounts;
SELECT
c.First_Name,
a.Balance
FROM Customers c
JOIN Accounts a
ON c.Customer_ID=a.Customer_ID
ORDER BY Balance DESC
LIMIT 5;
CALL GetCustomers();
SELECT
Account_ID,
Balance,
DENSE_RANK() OVER
(ORDER BY Balance DESC)
AS Balance_Rank
FROM Accounts;
SELECT
Account_ID,
Balance,
RANK() OVER
(ORDER BY Balance DESC)
AS Balance_Rank
FROM Accounts;
SELECT LENGTH(First_Name)
FROM Customers;
SELECT LOWER(First_Name)
FROM Customers;SELECT UPPER(First_Name)
FROM Customers;SELECT
Account_ID,
Balance,
CASE
WHEN Balance >= 100000 THEN 'Premium'
WHEN Balance >= 50000 THEN 'Gold'
ELSE 'Regular'
END AS Customer_Type
FROM Accounts;SELECT *
FROM Accounts
WHERE Balance >
(
SELECT AVG(Balance)
FROM Accounts
);SELECT
c.First_Name,
a.Balance
FROM Customers c
LEFT JOIN Accounts a
ON c.Customer_ID=a.Customer_ID;SELECT
c.First_Name,
a.Account_Type,
a.Balance
FROM Customers c
INNER JOIN Accounts a
ON c.Customer_ID=a.Customer_ID;SELECT
Account_Type,
AVG(Balance) AS Avg_Balance
FROM Accounts
GROUP BY Account_Type
HAVING AVG(Balance) > 40000;SELECT
Account_Type,
COUNT(*) AS Total_Accounts
FROM Accounts
GROUP BY Account_Type;SELECT MAX(Balance)
AS Highest_Balance
FROM Accounts;SELECT MIN(Balance)
AS Lowest_Balance
FROM Accounts;SELECT AVG(Balance)
AS Average_Balance
FROM Accounts;SELECT SUM(Balance)
AS Total_Balance
FROM Accounts;SELECT COUNT(*) AS Total_Customers
FROM Customers;SELECT * FROM Accounts
ORDER BY Balance DESC
LIMIT 3;SELECT DISTINCT Account_Type
FROM Accounts;SELECT * FROM Accounts
ORDER BY Balance ASC;SELECT * FROM Accounts
ORDER BY Balance DESC;SELECT * FROM Customers
WHERE First_Name LIKE '%an%';SELECT * FROM Customers
WHERE First_Name LIKE '%a';SELECT * FROM Customers
WHERE First_Name LIKE 'A%';SELECT * FROM Customers
WHERE City IN ('Vijayawada','Guntur');SELECT * FROM Accounts
WHERE Balance BETWEEN 30000 AND 70000;SELECT * FROM Customers
WHERE City='Vijayawada'
OR City='Hyderabad';SELECT * FROM Accounts
WHERE Account_Type='Savings'
AND Balance > 30000;SELECT * FROM Customers
WHERE City='Vijayawada';SELECT * FROM Accounts
WHERE Balance > 50000;
DELIMITER //

CREATE TRIGGER CheckBalance
BEFORE INSERT ON Accounts
FOR EACH ROW
BEGIN
    IF NEW.Balance < 0 THEN
        SET NEW.Balance = 0;
    END IF;
END //

DELIMITER ;
