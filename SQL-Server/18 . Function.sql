--⭐ SQL Function Kya Hota Hai?

--SQL Function =
--👉 Ek small program jisme input aata hai
--👉 Processing hoti hai
--👉 Aur 1 output return hota hai

--✔ Stored procedure se chhota
--✔ Always return a value
--✔ Select ke sath use ho sakta hai
--✔ Insert/Update/Delete nahi kar sakta

--Types:

--Scalar Function → 1 value return karta hai

--Table-Valued Function (TVF) → Table return karta hai

--🔥 1️ SCALAR FUNCTION

--Ek simple function jo SupplierName ki length return kare.

CREATE FUNCTION fn_GetNameLength
(
    @Name NVARCHAR(100)
)
RETURNS INT
AS
BEGIN
    RETURN LEN(@Name);
END;

SELECT SupplierName, dbo.fn_GetNameLength(SupplierName) AS NameLength  --✔ Use Function
FROM Suppliers;


--🔥 2️ FUNCTION → Supplier ka Full Address Return kare
--Full address = Address + City + Country

--✔ Function Create
CREATE FUNCTION fn_FullAddress
(
    @Address NVARCHAR(100),
    @City NVARCHAR(50),
    @Country NVARCHAR(50)
)
RETURNS NVARCHAR(200)
AS
BEGIN
    RETURN @Address + ', ' + @City + ', ' + @Country;
END;
SELECT --✔ Use Function
    SupplierName,
    dbo.fn_FullAddress(Address, City, Country) AS FullAddress
FROM Suppliers;


--🔥 3️ FUNCTION → Country Check (Yes/No)

--India ka supplier hai ya nahi check kare.

--✔ Create

CREATE FUNCTION fn_IsIndianSupplier (@Country NVARCHAR(50))
RETURNS NVARCHAR(10)
AS
BEGIN
    IF (@Country = 'India')
        RETURN 'Yes';
    RETURN 'No';
END;
SELECT --✔ Use
    SupplierName,
    Country,
    dbo.fn_IsIndianSupplier(Country) AS IsIndian
FROM Suppliers;


--⭐ 4️ TABLE-VALUED FUNCTION (TVF)

--TVF → Output ek table return karta hai.
--Example: City ke suppliers return karne wala function.

--✔ Create Function

CREATE FUNCTION fn_GetSuppliersByCity
(
    @City NVARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT SupplierID, SupplierName, Phone
    FROM Suppliers
    WHERE City = @City
);
SELECT * FROM dbo.fn_GetSuppliersByCity('London'); --✔ Use Function

--⭐ 5️⃣ TVF → Suppliers by Country
CREATE FUNCTION fn_GetSuppliersByCountry
(
    @Country NVARCHAR(50)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM Suppliers
    WHERE Country = @Country
);
SELECT * FROM dbo.fn_GetSuppliersByCountry('USA'); --✔ Use:

--🔥 6️ FUNCTION with Calculation

--Phone number me digits kitne hain:
CREATE FUNCTION fn_PhoneDigits
(
    @Phone NVARCHAR(50)
)
RETURNS INT
AS
BEGIN
    RETURN LEN(@Phone);
END;
SELECT SupplierName, Phone, dbo.fn_PhoneDigits(Phone) AS TotalDigits --Use:
FROM Suppliers;



