-- Predicate = Condition

-- Predicate ka matlab hota hai -> “condition”
--ya simple me → SQL ko batana ki kiska data chahiye.

--Jab tum SELECT query me WHERE lagate ho,
--to WHERE ke andar jo condition hoti hai, usko predicate bolte hain.

--1️ Equality Predicate
SELECT * FROM Categories
WHERE CategoryID = 1;

--✔ Sirf CategoryID = 1 laata hai.

--2️ Not Equal Predicate
SELECT * FROM Categories
WHERE CategoryName <> 'Beverages';
--✔ 'Beverages' ke alawa sab categories.

--3️ Greater Than / Less Than Predicate.
SELECT * FROM Categories
WHERE CategoryID > 5;
--✔ CategoryID 5 se zyada wale records.

--4️ AND Predicate (Multiple Conditions)
SELECT * FROM Categories
WHERE CategoryID > 3 AND CategoryID < 8;
--✔ 4–7 range ki categories.

--5️ OR Predicate
SELECT * FROM Categories
WHERE CategoryName = 'Seafood' OR CategoryName = 'Snacks';
--✔ Seafood ya Snacks dono me se koi bhi.

--6️ LIKE (Pattern Matching Predicate)
SELECT * FROM Categories
WHERE Description LIKE '%food%';
--✔ Description me "food" word ho to data milega.

--7️ IN Predicate
SELECT * FROM Categories
WHERE CategoryID IN (1, 3, 7);
--✔ Sirf 1, 3 aur 7 wali categories.

--8️ BETWEEN Predicate
SELECT * FROM Categories
WHERE CategoryID BETWEEN 2 AND 6;
--✔ 2 se 6 tak sab categories including 2 & 6.

--🎯 These 8 examples cover:

--✔ =
--✔ <>
--✔ <, >
--✔ AND
--✔ OR
--✔ LIKE
--✔ IN
--✔ BETWEEN