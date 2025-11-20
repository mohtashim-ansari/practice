--⭐ Procedural Statements Kya Hote Hain?

--SQL me "procedural" ka matlab:

--✔ Step-by-step execution
--✔ 1️ DECLARE + SET (Variables)
--✔ 2️ IF / ELSE
--✔ 3️ WHILE Loop
--✔ IF / ELSE
--✔ 4️ Stored Procedure (SP)

--✅ 1️ DECLARE + SET (Variable Use)
--👉 SupplierID ko variable me store karke data fetch karenge.
DECLARE @ID INT;
SET @ID = 3;

SELECT *
FROM Suppliers
WHERE SupplierID = @ID;

--✔ Variable dynamic filtering
--✔ Useful in stored procedures

--✅ 2️ IF / ELSE Practical
--👉 Check karo ki supplier ka Country = 'USA' hai ya nahi.
DECLARE @Country NVARCHAR(50);

SELECT @Country = Country
FROM Suppliers
WHERE SupplierID = 2;

IF (@Country = 'USA')
    PRINT 'Supplier USA se hai';
ELSE
    PRINT 'Supplier USA se nahi hai';
--✔ Output me message milega

--✅ 3️ WHILE Loop Practical
--👉 1 se 5 tak suppliers print karenge
--(Programming-style logic)

DECLARE @i INT = 1;

WHILE (@i <= 5)
BEGIN
    SELECT SupplierID, SupplierName
    FROM Suppliers
    WHERE SupplierID = @i;

    SET @i = @i + 1;
END;

--✔ Row by row reading
--✔ Loop concept clear ho jayega



--✅ 4️ Stored Procedure (MOST IMPORTANT)
--👉 Ek procedure banayenge jo SupplierID input lega aur supplier ka data return karega.
CREATE PROCEDURE GetSupplierByID
    @ID INT
AS
BEGIN
    SELECT *
    FROM Suppliers
    WHERE SupplierID = @ID;
END;

EXEC GetSupplierByID 4; --Run Procedure
--✔ SupplierID = 4 ka pura data aayega



--🎯 BONUS: IF + UPDATE in Procedure
--👉 City update karne ka stored procedure:

CREATE PROCEDURE UpdateSupplierCity
    @ID INT,
    @NewCity NVARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Suppliers WHERE SupplierID = @ID)
    BEGIN
        UPDATE Suppliers
        SET City = @NewCity
        WHERE SupplierID = @ID;

        PRINT 'City Updated!';
    END
    ELSE
        PRINT 'Supplier Not Found!';
END;
select * from Suppliers
EXEC UpdateSupplierCity 3, 'Mumbai';-- Run
