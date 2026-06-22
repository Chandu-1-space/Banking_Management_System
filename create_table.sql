CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Phone VARCHAR(15),
    City VARCHAR(50)
);
CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY,
    Customer_ID INT,
    Account_Type VARCHAR(20),
    Balance DECIMAL(10,2),

    FOREIGN KEY(Customer_ID)
    REFERENCES Customers(Customer_ID)
);
CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY,
    Account_ID INT,
    Transaction_Type VARCHAR(20),
    Amount DECIMAL(10,2),
    Transaction_Date DATE,

    FOREIGN KEY(Account_ID)
    REFERENCES Accounts(Account_ID)
);
CREATE TABLE Loans (
    Loan_ID INT PRIMARY KEY,
    Customer_ID INT,
    Loan_Amount DECIMAL(10,2),

    FOREIGN KEY(Customer_ID)
    REFERENCES Customers(Customer_ID)
);
