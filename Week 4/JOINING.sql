alter session  set current_schema = builder2;

SELECT A, B FROM A JOIN B USING (COMMON ELEMENT);

--1
SELECT Coderno, Order_Date, Customer_Name
FROM Corder 
JOIN Customer USING (Customer_ID);

--2 
SELECT Supplier_Name, Stock_Description 
FROM Supplier 
JOIN Stock USING (Supplier_ID);

--3 ??
SELECT Customer_Name, Stock_Description FROM Supplier JOIN Stock USING ()
DISTINCT ORDER BY CUSTOMER_NAME

--4
SELECT Customer_Name, Corder 
FROM Customer 
JOIN Corder USING (Customer_ID);
