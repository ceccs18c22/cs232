#1
CREATE TABLE STORE (
	`order_no` INTEGER PRIMARY KEY AUTO_INCREMENT,
    `code` VARCHAR(20) NOT NULL,
    `item` VARCHAR(30) NOT NULL,
    `quantity` VARCHAR(30) NOT NULL,
    `price` DECIMAL(10,2) NOT NULL,
    `discount` DECIMAL(2,2) DEFAULT 0,
    `mrp` DECIMAL(10,2) NOT NULL
);
#2
INSERT INTO STORE (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ('1031', "MAGGI", "1pkt", 23, 0, 23),('1001', "RICE", "1Kg", 51, 1, 50),('1007', "SALT", "1Kg", 10, 0, 10),('1014', "COCONUT OIL", "1ltr", 260, 5, 255),
('1019', "DIARY MILK", "1pkt", 60, 0, 60);
#3
SELECT * FROM STORE;
#4
CREATE VIEW CART AS
SELECT `item`, `quantity` FROM STORE;
#5
INSERT INTO STORE (`code`, `item`, `quantity`, `price`, `discount`, `mrp`) 
VALUES ('1024', "MILK", "1ltr", 48, 0, 48);
SELECT * FROM CART;
#6
DROP VIEW CART;

