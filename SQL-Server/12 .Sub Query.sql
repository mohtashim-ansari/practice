--✅ Subquery Kya Hoti Hai? (Simple Explanation)

--Subquery = Query ke andar Query
--Matlab ek choti query, jo pehle chalti hai,
--Uska result badi query use karti hai.

--👉 Jaise ghar me chota kaam hone ke baad bada kaam hota hai, waise hi subquery hoti hai.

--🔥 TYPES OF SUBQUERIES

--1️ Single Row Subquery
--Ek hi value return karti hai (MAX, MIN, COUNT)

--2 Multi Row Subquery
--Bohot saari rows return karti hai (IN, ANY, ALL)

--3 Correlated Subquery
--Bahar wali query ke column ko use karti hai
--(Row-by-row chalti hai)

--✅ 1️ Single-Row Subquery
--👉 Sabse bada (MAX) CategoryID ka record lane ka example

SELECT *
FROM Categories
WHERE CategoryID = (
    SELECT MAX(CategoryID) FROM Categories
);
--✔ Pehle subquery MAX(CategoryID) nikaalegi
--✔ Fir outer query us category ka complete data dikhayegi


--✅ 2 Multi-Row Subquery (IN)
--👉 Un categories ko dikhana jinka CategoryID 1, 3, 5 me se hai

--(Subquery se IDs lenge)

SELECT *
FROM Categories
WHERE CategoryID IN (
    SELECT CategoryID 
    FROM Categories 
    WHERE CategoryID % 2 = 1   -- odd category ids
);
--✔ Andar wali query odd CategoryID nikalegi
--✔ Bahar wali unka complete data

--✅ 3 Subquery with NOT IN
--👉 Un categories ko dikhana jinka CategoryID small values me nahi hai

SELECT *
FROM Categories
WHERE CategoryID NOT IN (
    SELECT CategoryID FROM Categories WHERE CategoryID <= 3
);
--✔ Subquery CategoryID ≤ 3 return karegi
--✔ Outer query unhe hata kar baaki data dikhayegi


--✅ 4 Scalar Subquery (Single Value)
--👉 CategoryID ka average nikaal kar usse bade category record lana

SELECT *
FROM Categories
WHERE CategoryID > (
    SELECT AVG(CategoryID) FROM Categories
);

--✔ Subquery average CategoryID nikaalegi
--✔ Outer query usse bade wale category laayegi

--✅ 5️ Correlated Subquery

--(Row-by-row comparison)
--👉 Har category ko dikhana aur check karna
--ki kya koi dusri category hai jiska Description same hai

SELECT *
FROM Categories C1
WHERE EXISTS (
    SELECT 1 
    FROM Categories C2
    WHERE C2.Description = C1.Description
      AND C2.CategoryID <> C1.CategoryID
);

--✔ Ye check karega ki kya koi duplicate-description categories exist karti hain

