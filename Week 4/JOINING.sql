alter session  set current_schema = builder2;

SELECT A, B FROM A JOIN B USING (COMMON ATTRIBUTE);

--1
SELECT Corderno, Order_Date, Customer_Name
FROM Corder 
JOIN Customer USING (Customer_Id);

--2 
SELECT Supplier_Name, Stock_Description 
FROM Supplier 
JOIN Stock USING (Supplier_ID);

--3 ??
SELECT DISTINCT Customer_Name, Stock_Description 
FROM Customer 
JOIN Corder USING (Customer_ID)
JOIN Corderline USING (CORDERNO)
JOIN Stock USING (Stock_Code)
ORDER BY Customer_Name;

--4
SELECT Customer_Name, COUNT(CORDERNO)
FROM Customer 
JOIN Corder USING (Customer_id)
GROUP BY Customer_Name;
