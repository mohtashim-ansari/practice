--⭐ Default Argument (SQL Function) — Simple Explanation

--Jab aap function banate waqt parameter ko default value de dete ho, tab:
--✔ Agar user value pass kare → wahi value use hogi
--✔ Agar user value NA de → default value use hogi


--🔥 Practical Example (Suppliers Table पर)
--🎯 Example 1 — Default Country = 'USA'

--Agar koi country na de to USA ko default maan lo.

--✔ Function Create:
CREATE FUNCTION fn_SupplierByCountry
(
    @Country NVARCHAR(50) = 'USA'    -- DEFAULT ARGUMENT
)
RETURNS TABLE
AS
RETURN
(
    SELECT SupplierID, SupplierName, City, Country
    FROM Suppliers
    WHERE Country = @Country
);
SELECT * FROM dbo.fn_SupplierByCountry(); --✔ Use Example — Without Passing Argument (Automatic ‘USA’ chalega)

SELECT * FROM dbo.fn_SupplierByCountry('Germany'); --✔ Use Example — With Argument (Aapne jo diya wahi chalega)


--⭐ Example 2 — Default City = 'London'
CREATE OR ALTER FUNCTION fn_GetSuppliersByCity
(
    @City NVARCHAR(50) = 'London'
)
RETURNS TABLE
AS
RETURN
(
    SELECT SupplierID, SupplierName, Country
    FROM Suppliers
    WHERE City = @City
);

SELECT *
FROM fn_GetSuppliersByCity('Tokyo');

DROP FUNCTION fn_GetSuppliersByCity;


--Output Parameter = Procedure se bahar value lekar aane ka tareeka
--Jab hum Stored Procedure chalate hain aur chaahte hain ki woh koi value wapas de, to hum OUTPUT parameter use karte hain.

--Bilkul desi language me:

--👉 “Procedure ka kaam ho chuka hai, ab result mere haath me de de.”
--Output parameter wahi result hota hai.

--✅ 1. OUTPUT Parameter ka Simple Example (Suppliers Table Par Practical)
--Step 1 → Procedure banana

--Yeh procedure Total Suppliers count karke output me wapas dega:
CREATE PROCEDURE sp_GetSupplierCount
(
    @TotalSuppliers INT OUTPUT
)
AS
BEGIN
    SELECT @TotalSuppliers = COUNT(*)
    FROM Suppliers;
END;

--✅ Step 2 → Procedure ko call karna + Output lena

DECLARE @Count INT; --Use:

EXEC sp_GetSupplierCount @TotalSuppliers = @Count OUTPUT;

SELECT @Count AS TotalSuppliers;

------------------------------------------------------------

--✅ 2. OUTPUT Parameter with Filtering (City wise count)
--Procedur
CREATE PROCEDURE sp_GetSuppliersByCityCount
(
    @City NVARCHAR(50),
    @Count INT OUTPUT
)
AS
BEGIN
    SELECT @Count = COUNT(*)
    FROM Suppliers
    WHERE City = @City;
END;
DECLARE @Total INT; --Use:

EXEC sp_GetSuppliersByCityCount 
     @City = 'London',
     @Count = @Total OUTPUT;

SELECT @Total AS TotalSuppliersInCity;


