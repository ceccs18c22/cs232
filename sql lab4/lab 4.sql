#1
CREATE TABLE DEPARTMENT(`code` INT PRIMARY KEY NOT NULL,`dept_name` VARCHAR(30) UNIQUE NOT NULL,`title` VARCHAR(30),`dept_id` INT UNIQUE NOT NULL, `salary` INT,CHECK (`salary` > 2000 ));
INSERT INTO DEPARTMENT(`code`,  `dept_name`, `title`, `dept_id`,`salary`)VALUES (1, "system software", "course1", 100, 20000),(2, "graph theory", "course2", 101, 25000);
#2
CREATE TABLE INSTRUCTOR(`name` VARCHAR(50) NOT NULL,`code` INT NOT NULL,`id` INT PRIMARY KEY DEFAULT 1);
INSERT INTO INSTRUCTOR(`name`, `code`)VALUES ("MSD", 7);
SELECT * FROM DEPARTMENT;
SELECT * FROM INSTRUCTOR;