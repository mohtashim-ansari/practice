-- Simple Definition (Desi Style)

--DQL wo commands hoti hain jo database se sirf “data dekhne” ke kaam aati हैं.
--Hum kuch change nahi karte — sirf data ko read karte hain.

--DQL (Data Query Language) ka main command sirf ek hi hai (SELEC)Bas!:
--DQL = SELECT command, jiska kaam hota hai data ko retrieve / fetch / read karna.

--✅ 1. Saara data dekhna
SELECT * FROM [Northwind].[dbo].[Categories];

--✅ 2. Specific columns dekhna
SELECT CategoryID, CategoryName 
FROM [Northwind].[dbo].[Categories];

--✅ 3. Sirf top 5 records dekhna
SELECT TOP 5 * 
FROM [Northwind].[dbo].[Categories];

--✅ 4. Condition ke saath data dekhna (WHERE)
SELECT * 
FROM [Northwind].[dbo].[Categories]
WHERE CategoryID = 2;

--✅ 5. LIKE ke saath search karna
SELECT * 
FROM [Northwind].[dbo].[Categories]
WHERE CategoryName LIKE '%food%';

--✅ 6. Sorting (ORDER BY)
SELECT * 
FROM [Northwind].[dbo].[Categories]
ORDER BY CategoryName ASC;

--✅ 7. Count karna (Kitni rows hain)
SELECT COUNT(*) AS TotalCategories
FROM [Northwind].[dbo].[Categories];

