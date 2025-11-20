--⭐ Trigger Kya Hota Hai? (Desi Language Me)

--Trigger SQL ka automatic system hota hai.
--👉 “Jab table me koi event ho — INSERT, UPDATE ya DELETE — tab SQL apne-aap ek kaam karta hai.”
--Bilkul CCTV camera ki tarah —
--Jab koi activity hoti hai, trigger automatically action perform karta hai.

--⭐ Triggers Ke Types (Easy)
--Trigger Type	Kab Chalti Hai
--AFTER INSERT	Jab new row insert hoti hai
--AFTER UPDATE	Jab row update hoti hai
--AFTER DELETE	Jab row delete hoti hai
--INSTEAD OF	Default action ko replace karta hai


--✅ 1. AFTER INSERT Trigger

--👉 Jab bhi supplier add hoga, ek log table me entry store ho jaye.

--Step 1 — Log table banao
CREATE TABLE SupplierLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierID INT,
    ActionTaken VARCHAR(50),
    ActionDate DATETIME
);

--Step 2 — Trigger banao

CREATE TRIGGER trg_AfterInsert_Supplier
ON Suppliers
AFTER INSERT
AS
BEGIN
    INSERT INTO SupplierLog (SupplierID, ActionTaken, ActionDate)
    SELECT SupplierID, 'Inserted', GETDATE()
    FROM inserted;
END;

--Test (Insert)

INSERT INTO Suppliers (SupplierName, ContactName, City, Country, Phone)
VALUES ('Test Supplier', 'John', 'London', 'UK', '000-111');

--Check log

SELECT * FROM SupplierLog;

--✅ 2. AFTER UPDATE Trigger

--👉 Jab supplier update ho, log table me record jaye.

CREATE TRIGGER trg_AfterUpdate_Supplier
ON Suppliers
AFTER UPDATE
AS
BEGIN
    INSERT INTO SupplierLog (SupplierID, ActionTaken, ActionDate)
    SELECT SupplierID, 'Updated', GETDATE()
    FROM inserted;
END;

--Test (Update)

UPDATE Suppliers
SET City = 'Berlin'
WHERE SupplierID = 1;

--✅ 3. AFTER DELETE Trigger

--👉 Jab supplier delete ho, log entry store ho jaye.

CREATE TRIGGER trg_AfterDelete_Supplier
ON Suppliers
AFTER DELETE
AS
BEGIN
    INSERT INTO SupplierLog (SupplierID, ActionTaken, ActionDate)
    SELECT SupplierID, 'Deleted', GETDATE()
    FROM deleted;
END;

--Test (Delete)
CREATE TRIGGER trg_NoDeleteSupplier
ON Suppliers
INSTEAD OF DELETE
AS
BEGIN
    PRINT 'Cannot delete supplier. Products are linked with this SupplierID.';
END;

--Test (Delete)
DELETE FROM Suppliers
WHERE SupplierID = 2;

--⭐ 4. INSTEAD OF DELETE Trigger
--👉 Delete ko allow NAHI karega, warn karega.

CREATE TRIGGER trg_PreventDeleteSupplier
ON Suppliers
INSTEAD OF DELETE
AS
BEGIN
    PRINT 'Deleting suppliers is NOT allowed!';
END;

--Test (Delete)

DELETE FROM Suppliers WHERE SupplierID = 3;
