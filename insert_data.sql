INSERT INTO Customers VALUES
(101,'Chandu','Neelam','9876543210','Vijayawada'),
(102,'Rahul','Kumar','9876543211','Hyderabad'),
(103,'Anjali','Reddy','9876543212','tamilnadu'),
(104,'Ramya','yerra','9876543211','Hyderabad'),
(105,'Anji','Reddy','9876543212','srikakulam'),
(106,'swapna','Kumari','9876543211','Hyderabad'),
(107,'Nagababu','Dasari','9876543212','Eluru');
INSERT INTO Accounts VALUES
(1001,101,'Savings',50000),
(1002,102,'Current',75000),
(1003,103,'Savings',30000),
(1004,104,'Savings',59000),
(1005,105,'Current',25000),
(1006,106,'Savings',90000);
INSERT INTO Transactions VALUES
(1,1001,'Deposit',10000,'2026-06-01'),
(2,1001,'Withdraw',5000,'2026-06-02'),
(3,1002,'Deposit',15000,'2026-06-03'),
(4,1003,'Deposit',10000,'2026-06-01'),
(5,1003,'Withdraw',5000,'2026-06-02'),
(6,1002,'Deposit',15000,'2026-06-03'),
(7,1004,'Deposit',10000,'2026-06-01'),
(8,1004,'Withdraw',5000,'2026-06-02'),
(9,1002,'Deposit',15000,'2026-06-03');
INSERT INTO Loans VALUES
(1,101,200000),
(2,103,100000),
(3,107,200000),
(4,106,100000),
(5,102,200000),
(6,105,100000);