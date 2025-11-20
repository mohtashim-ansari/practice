
--SQL me 4 main SET operators hote hain:
--1->UNION ,2->UNION ALL,3->INTERSECT,4->EXCEPT


--🔹 1️ UNION (duplicate hata deta hai)

--👉 Do SELECT ka result combine karega
--👉 Agar same row baar-baar hai to sirf 1 baar dikhayega
SELECT FirstName FROM Employees
UNION
SELECT LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1)
FROM Customers;
--✔ Yeh Customers.ContactName se first space tak ka naam extract karega
--✔ Then UNION karega

--🔹 2️ UNION ALL — (Duplicate NAHI hataata)
--UNION ALL ka matlab:

--👉 “Dono SELECT ka data jaisa hai waisa jutao.”
--👉 Duplicate rows bhi aayengi
--👉 Fast hota hai, kyunki SQL ko duplicate check nahi karna padta
SELECT LastName FROM Employees
UNION ALL
SELECT ContactName FROM Customers;
--✔ Sab records aayenge
--✔ Chahe 5 baar repeat ho — phir bhi 5 baar hi show karega

--🔹 3️ INTERSECT (common values batata hai)
--👉 Dono SELECT me jo data common ho
--👉 Sirf wahi show karega
SELECT FirstName FROM Employees
UNION ALL
SELECT CategoryName FROM Categories;







