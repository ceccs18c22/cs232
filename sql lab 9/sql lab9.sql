#1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('rm1','roomie','2000-02-02','CTO',190000.78),
('pp2','pewdiepie','2000-01-12','CEO',185000.78),
('tt3','toast','1998-08-02','Clerk',59000.78),
('acp4','corpse','1969-04-20','Auditor',59000.18);

#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'palakkad',290000.25),
(1990002,'palakkad',291233.22),
(1990003,'karunagapally',123570.1),
(1990004,'palakkad',2239083.78),
(1990005,'alapuzha',100090.90);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;