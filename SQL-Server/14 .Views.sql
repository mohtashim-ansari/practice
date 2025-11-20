--⭐ VIEW KYA HOTA HAI? (Simple Explanation)

--View = Ek virtual table
--✔ Data table me hi hota hai
--✔ View sirf saved SELECT query hoti hai
--✔ View read-only ya updatable ho sakti hai

--👉 Real-life example:
--Jaise TV me "sports channel" alag hota hai, but game sab stadium me hota hai.

--✅ 1 Simple View Create

--Sirf SupplierID, SupplierName dikhane ka view:
CREATE VIEW vw_SupplierBasic
AS
SELECT SupplierID, SupplierName
FROM Suppliers;
SELECT * FROM vw_SupplierBasic;

--✅ 2️ WHERE Condition View

--Sirf USA ke suppliers ka view:

CREATE VIEW vw_SupplierUSA
AS
SELECT SupplierID, SupplierName, City, Country
FROM Suppliers
WHERE Country = 'USA';
SELECT * FROM vw_SupplierUSA;

--✅ 3️ JOIN View (Advanced)

--Supplier + Products ko join karke ek view:
CREATE VIEW vw_SupplierProducts
AS
SELECT 
    S.SupplierID,
    S.SupplierName,
    P.ProductName,
    P.Price
FROM Suppliers S
JOIN Products P
    ON S.SupplierID = P.SupplierID;
SELECT * FROM vw_SupplierProducts;

--✅ 4️ UPDATE View (Updatable View)

--⚠ Agar view sirf ek table ka ho to update ho sakta hai.
UPDATE vw_SupplierBasic
SET SupplierName = 'New Supplier Name'
WHERE SupplierID = 1;
--✔ Ye change original Suppliers table me chale jayega.

--✅ 5️ View Modify Karna

--View ko edit karna ho:
ALTER VIEW vw_SupplierBasic
AS
SELECT SupplierID, SupplierName, Country
FROM Suppliers;

--✅ 6️ Drop View
DROP VIEW vw_SupplierBasic;


--✅ 7️ Encrypted View (Code hide ho jata hai)
CREATE VIEW vw_SupplierSecret
WITH ENCRYPTION
AS
SELECT SupplierName, Phone
FROM Suppliers;

--🎉 BONUS — Most Practical View Example
--👉 View of Supplier + Their Full Address
CREATE VIEW vw_SupplierAddress
AS
SELECT 
    SupplierName,
    ContactName,
    Address + ', ' + City + ', ' + Country AS FullAddress,
    Phone
FROM Suppliers;

SELECT * FROM vw_SupplierAddress;
