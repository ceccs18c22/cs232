#1
CREATE TABLE EMPLOYEE(`empid` CHAR(4) NOT NULL, `name` CHAR(10) NOT NULL);
CREATE TABLE EMPLOYEE_DETAILS(`empid` CHAR(4) NOT NULL, `name` CHAR(10) NOT NULL,   `designation` CHAR(30) NOT NULL,  `dob` DATE NOT NULL);
INSERT INTO EMPLOYEE (`empid`, `name`)VALUES ('e1' ,'boult'),('e2','mitchell' ),('e3' ,'stark'),('e4', 'butler'),('e5','shane');
INSERT INTO EMPLOYEE_DETAILS (`empid`, `name`, `designation`, `dob`)VALUES ('e1' ,'boult' ,'HOD' ,'1990-09-08'),('e2','mitchell' ,'Manager','1991-06-04'),('e5' ,'shane' , 'Asst.Manager' ,'1991-10-18');
#2
SELECT * FROM EMPLOYEE WHERE empid IN (SELECT empid FROM EMPLOYEE_DETAILS);
#3
SELECT * FROM EMPLOYEE WHERE empid NOT IN (SELECT empid FROM EMPLOYEE_DETAILS);

