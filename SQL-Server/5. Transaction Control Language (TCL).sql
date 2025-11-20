--TCL (Transaction Control Language)
--TCL ka kaam hota hai database me hone wale changes ko control karna.
--Jab hum INSERT, UPDATE, DELETE karte hain, unhe save ya rollback karne ke liye TCL use hota hai.

--⭐ TCL ke 3 Main Commands
--1️⃣ COMMIT
--Changes permanently save kar deta hai.

--2️⃣ ROLLBACK
--Jo changes huye, unhe undo (cancel) kar deta hai.

--3️⃣ SAVEPOINT
--Transaction ke beech ek checkpoint create karta hai jaha tak rollback kar sakte ho.

--⭐ Desi Language me Simple Explanation

--COMMIT	"Pakka kar do, save kar do."
--ROLLBACK	"Nahi chahiye, wapas pehle jaisa kar do."
--SAVEPOINT	"Is jagah mark karlo, yaha tak wapas aa sakte hain."


--✅ 1️ BEGIN TRANSACTION + UPDATE + COMMIT
--✔ Price 20 ho jayega
--✔ Commit ke baad permanent save ho jayega

BEGIN TRANSACTION;

UPDATE Products
SET Price = 20
WHERE ProductID = 1;

COMMIT;

select * from Products

--✅ 2️ BEGIN TRANSACTION + UPDATE + ROLLBACK
--✔ Price change cancel ho jayega
--✔ Table wapas original state me aayegi

BEGIN TRANSACTION;

UPDATE Products
SET Price = 15
WHERE ProductID = 2;

ROLLBACK;

--✅ 3️ SAVEPOINT Example
--🔥 Result:
--✔ Product 3 ka price = 12 (save)
--❌ Product 4 ka price = 50 (cancel)
--✔ Final commit se P1 se pehle wale changes save
BEGIN TRANSACTION;

-- Step 1: change ProductID = 3
UPDATE Products
SET Price = 12
WHERE ProductID = 3;

select *from Products
-- create a savepoint (SQL Server syntax)
SAVE TRANSACTION P1;

-- Step 2: change ProductID = 4
UPDATE Products
SET Price = 50
WHERE ProductID = 4;

-- rollback only to the savepoint — undo step 2 but keep step 1
ROLLBACK TRANSACTION P1;

-- finally commit the remaining changes (step 1 stays)
COMMIT;
