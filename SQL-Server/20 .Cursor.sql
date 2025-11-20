--⭐ Cursor Kya Hota Hai (Desi Language Me)?

--Cursor SQL ka “for loop” hota hai.
--Jab tum data ko row-by-row process karna chaho, tab Cursor use hota hai.
--👉 “Table ka ek-ek row uthao, uska kaam karo, phir next row uthao…”
--Cursor yahi karta hai.

--✅ 1. Cursor Create + Use Example
DECLARE @SupplierName NVARCHAR(100);

DECLARE SupplierCursor CURSOR FOR
SELECT SupplierName
FROM Suppliers;

OPEN SupplierCursor;

FETCH NEXT FROM SupplierCursor INTO @SupplierName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Supplier Name: ' + @SupplierName;

    FETCH NEXT FROM SupplierCursor INTO @SupplierName;
END

CLOSE SupplierCursor;
DEALLOCATE SupplierCursor;

--⭐ OUTPUT kya karega?
--Ye har supplier ka naam ek ek karke print karega:

-------------------------------------------------

--⭐ 2. Cursor With Multiple Columns (SupplierName + City)
DECLARE @Name NVARCHAR(100);
DECLARE @City NVARCHAR(50);

DECLARE SupplierCursor CURSOR FOR
SELECT SupplierName, City
FROM Suppliers;

OPEN SupplierCursor;

FETCH NEXT FROM SupplierCursor INTO @Name, @City;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @Name + ' is from ' + @City;

    FETCH NEXT FROM SupplierCursor INTO @Name, @City;
END

CLOSE SupplierCursor;
DEALLOCATE SupplierCursor;

--------------------------------------------

--⭐ 3. Cursor with UPDATE (Row-by-Row Update)
--Example: Sab suppliers ke name ke aage “Mr. ” lagana
DECLARE @ID INT;
DECLARE @Name NVARCHAR(100);

DECLARE Cur CURSOR FOR
SELECT SupplierID, SupplierName
FROM Suppliers;

OPEN Cur;

FETCH NEXT FROM Cur INTO @ID, @Name;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE Suppliers
    SET SupplierName = 'Mr. ' + @Name
    WHERE SupplierID = @ID;

    FETCH NEXT FROM Cur INTO @ID, @Name;
END

CLOSE Cur;
DEALLOCATE Cur;
select * from Suppliers