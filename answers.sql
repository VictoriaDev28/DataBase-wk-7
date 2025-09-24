## Q1 ##
CREATE TABLE orderdetail(
orderID INT PRIMARY KEY,
customerName VARCHAR(25)
);

CREATE TABLE product(
productID INT PRIMARY KEY  auto_increment unique,
orderID INT,
productName VARCHAR(10),
FOREIGN KEY (orderID) REFERENCES productdetail(orderID)
);

INSERT INTO productdetail(orderID, customerName)
VALUES (101, "John Doe"),(102, "Jane Smith"),(103, "Emily Clark");

INSERT INTO product(orderID, productName)
VALUES (101, "Laptop"),(101, "Mouse"),
(102, "Tablet"),(102, "Keyboard"),(102, "Mouse"),
(103, "Phone");


## Q2 ##
CREATE TABLE Customer(
customerID INT PRIMARY KEY auto_increment,
customerName VARCHAR(20)
);

CREATE TABLE Product(
productID INT PRIMARY KEY auto_increment,
productName VARCHAR(10)
);

CREATE TABLE OrderD(
orderID INT PRIMARY KEY,
customerID INT,
FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);


INSERT INTO Customer(customerName)
VALUES ("John Doe"),("Jane Smith"),("Emily Clark");

INSERT INTO Product(productName)
Values("Laptop"),("Mouse"),("Tablet"),("Keyboard"),("Phone");

INSERT INTO OrderD(orderID, customerID)
VALUES (101,1),
(102,2),
(103,3);