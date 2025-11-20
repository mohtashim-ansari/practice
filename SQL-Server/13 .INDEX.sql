--⭐ INDEX क्या होता है? (Simple Explanation)

--Index ek book ke index jaisa hota hai:

--📘 Book me kisi topic ko jaldi dhoondne ke liye index hota hai
--💾 Database me kisi record ko jaldi dhoondne ke liye Index hota hai

--✔ Search fast
--✔ Sorting fast
--✔ Filtering fast

--✅ 1 Create a Simple INDEX (NON-CLUSTERED)

--👉 City column par index banayenge
--(search fast hoga: WHERE City='London')

CREATE INDEX idx_City
ON Customers (City);
select  * from Customers 
--✔ Ab City ke basis par search fast chalega

--✅ 2️ Search Query Before/After Index
--👉 Ye query ab fast hogi:
SELECT *
FROM Customers
WHERE City = 'London';
select * from Customers


--✅ 3️ Create UNIQUE INDEX

--👉 CustomerName unique hona chahiye
CREATE UNIQUE INDEX idx_CustomerName
ON Customers (CustomerName);
select * from Customers
--⚠ Agar duplicate hua to error aa jayega

--✅ 4️ Composite Index (Multi-Column Index)

--👉 2 columns pe index
--City + Country
CREATE INDEX idx_City_Country
ON Customers (City, Country);
select * from Customers
--✔ Sorting, filtering dono fast
--✔ Especially jab query aisi ho:

SELECT *
FROM Customers
WHERE City = 'London'
  AND Country = 'UK';


  --✅ 5️ Drop Index
  DROP INDEX idx_City ON Customers;

  --✅ 6️ Check Existing Indexes
  SELECT *
FROM sys.indexes
WHERE object_id = OBJECT_ID('Customers');
--Isse sari indexes ka detail dikhega.

--✅ 7️ Index kis query me help karega?

--Aisi queries FAST ho jayengi:
--A) Filtering
SELECT * FROM Customers WHERE Country = 'Germany';

--B)Sorting
SELECT * FROM Customers ORDER BY City;

--c) Joins
SELECT * 
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID;
