--⭐ Transaction Process Kya Hota Hai? (Simple Explanation)

--Transaction =
--👉 “Database me ek group of changes jo ya to saare honge, ya koi nahi hoga.”

--Jaise:
--Aap bank me ₹500 transfer karte ho
--Agar beech me light chali jaye?
--Money na idhar se kate, na udhar add ho
--✔️ Transaction ensures ALL OR NOTHING.


--🚀 1️ BEGIN TRAN + COMMIT (Permanent Change)

--Example → Supplier ka city permanently change karna:
BEGIN TRAN;

UPDATE Suppliers
SET City = 'Mumbai'
WHERE SupplierID = 1;

COMMIT;
select * from Suppliers
--✔ Change save ho jayega
--✔ City = Mumbai ho jayega

--🚀 2️ BEGIN TRAN + ROLLBACK (Undo Change)

--Example → Change karenge, but wapas cancel kar denge:

BEGIN TRAN;

UPDATE Suppliers
SET Country = 'India'
WHERE SupplierID = 2;

ROLLBACK;
--✔ Change cancel
--✔ Table bilkul original rahega

--🚀 3️ SAVE TRAN + Partial ROLLBACK

--(Ye sabse important practical hai!)
BEGIN TRAN;

UPDATE Suppliers
SET City = 'Delhi'
WHERE SupplierID = 3;

SAVE TRAN step1;

UPDATE Suppliers
SET Country = 'Japan'
WHERE SupplierID = 4;

ROLLBACK TRAN step1;

COMMIT;

select * from Suppliers
--💡 What happened?

--SupplierID = 3 → City changed to Delhi (saved)
--SupplierID = 4 → Country = Japan (undo ho gaya)
--Final = Only first update saved!

--🚀 4️ Transaction Me Multiple Changes

--Jaise shop me ek sath 3 customers update:

BEGIN TRAN;

UPDATE Suppliers SET City = 'Paris' WHERE SupplierID = 5;
UPDATE Suppliers SET City = 'Tokyo' WHERE SupplierID = 6;
UPDATE Suppliers SET City = 'Berlin' WHERE SupplierID = 7;

COMMIT;
select * from Suppliers
--✔ All 3 changes save
--✔ Ek bhi command fail hota → sab rollback hota

--🚀 5️ Transaction Fail Example (Error Handling)

BEGIN TRAN;

UPDATE Suppliers SET City = 'London' WHERE SupplierID = 8;


UPDATE Suppliers SET WrongColumn = 'Test'; -- Invalid column error

ROLLBACK;
--✔ Entire transaction cancel ho jayegi
--✔ SupplierID 8 ka update bhi cancel ho jayega