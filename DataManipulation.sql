CREATE TABLE Customer (
Customer_id VARCHAR2(20)CONSTRAINT Customer_pk PRIMARY KEY,
Customer_Name VARCHAR2(20)CONSTRAINT Customer_Name NOT NULL,
Customer_Tel NUMBER,
);

CREATE TABLE Product (
Product_id VARCHAR2(20)CONSTRAINT Product_pk PRIMARY KEY,
Product_Name VARCHAR2(20)CONSTRAINT Product_Name NOT NULL,
Price NUMBER CONSTRAINT Price CHECK (Price > 0), 
);

CREATE TABLE Orders (
CONSTRAINT FK_CustumerOrders FOREIGN KEY (Customer_id) REFERENCES Customer (Customer_id),
CONSTRAINT FK_ProductOrders FOREIGN KEY (Product_id) REFERENCES Product (Product_id),
Quantity NUMBER ,
Total_amount NUMBER ,
);

ALTER TABLE Product ADD Category VARCHAR2(20),
ALTER TABLE Orders ADD Order_Date DATE DEFAULT SYSDATE();



INSERT INTO Product
(
Product_id,
Product_Name,
Category,
Price
)
VALUES
(
"P01",
"Samsung Galaxy S20",
"Smartphone",
3299
);

INSERT INTO Product VALUES
(
"P02",
"ASUS Notebook",
"PC",
4599
);

INSERT INTO Customer VALUES
(
"C01",
"ALI",
71321009
);

INSERT INTO Customer VALUES
(
"C02",
"ASMA",
77345823
);

INSERT INTO Orders (customer_ID)
SELECT customer_id FROM Customer;

INSERT INTO Orders (Product_id)
SELECT Product_id FROM Product;

INSERT INTO Orders 
(
quantity,
total_Amount
)
VALUES
(
2,
9198
);

INSERT INTO Orders (Customer_id)
SELECT Customer_id FROM Customer;

INSERT INTO Orders (Product_id)
SELECT Product_id FROM Product;

INSERT INTO Orders 
(
Order_Date
quantity,
Total_Amount
)
VALUES
(
28/05/2020,
1,
3299
);