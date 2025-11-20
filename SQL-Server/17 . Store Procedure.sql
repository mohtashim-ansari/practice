--⭐ Stored Procedure (SP) Kya Hota Hai?

--Stored Procedure =
--👉 Database me SAVE ki hui SQL commands
--👉 Jise aap baar-baar run kar sakte ho
--👉 Jaise ek function hota hai

--✔ Fast
--✔ Secure
--✔ Reusable

--✅ 1️ Simple SELECT Procedure

--Supplier ka pura data return karne wali SP:
CREATE PROCEDURE sp_GetAllSuppliers
AS
BEGIN
    SELECT *
    FROM Suppliers;
END;
EXEC sp_GetAllSuppliers;


--✅ 2️ Procedure With Parameter (SupplierID Input)

--1 Supplier ka record return karegi:
CREATE PROCEDURE sp_GetSupplierByID
    @ID INT
AS
BEGIN
    SELECT *
    FROM Suppliers
    WHERE SupplierID = @ID;
END;
EXEC sp_GetSupplierByID 3;

--✅ 3️ Insert Supplier (Stored Procedure for INSERT)
CREATE PROCEDURE sp_AddSupplier
    @Name NVARCHAR(100),
    @Contact NVARCHAR(100),
    @City NVARCHAR(50),
    @Country NVARCHAR(50),
    @Phone NVARCHAR(20)
AS
BEGIN
    INSERT INTO Suppliers (SupplierName, ContactName, City, Country, Phone)
    VALUES (@Name, @Contact, @City, @Country, @Phone);
END;
EXEC sp_AddSupplier 
     'Tata Foods', 'Ravi Kumar', 'Mumbai', 'India', '9876543210';
--✔ New supplier add ho jayega

--✅ 4️ Update Supplier (Procedure for UPDATE)
CREATE PROCEDURE sp_UpdateSupplierCity
    @ID INT,
    @NewCity NVARCHAR(50)
AS
BEGIN
    UPDATE Suppliers
    SET City = @NewCity
    WHERE SupplierID = @ID;
END;
EXEC sp_UpdateSupplierCity 2, 'Delhi';

--✅ 5️ Delete Supplier (Procedure for DELETE)
CREATE PROCEDURE sp_DeleteSupplier
    @ID INT
AS
BEGIN
    DELETE FROM Suppliers
    WHERE SupplierID = @ID;
END;
EXEC sp_DeleteSupplier 7;

--✅ 6️ Stored Procedure with IF / ELSE (Error Handling)
CREATE PROCEDURE sp_CheckSupplier
    @ID INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Suppliers WHERE SupplierID = @ID)
        SELECT * FROM Suppliers WHERE SupplierID = @ID;
    ELSE
        PRINT 'Supplier Not Found!';
END;
EXEC sp_CheckSupplier 1;

--✅ 7️ Stored Procedure Using LIKE (Search Supplier)
CREATE PROCEDURE sp_SearchSupplierByName
    @Search NVARCHAR(50)
AS
BEGIN
    SELECT *
    FROM Suppliers
    WHERE SupplierName LIKE '%' + @Search + '%';
END;
EXEC sp_SearchSupplierByName 'Food';

--🎉 BONUS — Most Important SP (Insert + Return New ID)

CREATE PROCEDURE sp_AddSupplierReturnID
    @Name NVARCHAR(100),
    @City NVARCHAR(50),
    @NewID INT OUTPUT
AS
BEGIN
    INSERT INTO Suppliers (SupplierName, City)
    VALUES (@Name, @City);

    SET @NewID = SCOPE_IDENTITY();
END;

DECLARE @ID INT;

EXEC sp_AddSupplierReturnID 'Himalayan Foods', 'Delhi', @ID OUTPUT;

PRINT 'New Supplier ID = ' + CAST(@ID AS NVARCHAR);


