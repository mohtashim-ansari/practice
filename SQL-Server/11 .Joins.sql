--⭐ Joins kya hote hai? (Desi Explanation)

--Join ka matlab:
--👉 “Do ya zyada tables ko jodkar data lana.”
--Jab ek table me aadha data ho
--aur doosre table me baaki aadha
--to join se dono ka complete picture milta hai.

--⭐ SQL Me 4 Main Joins

-- 1->INNER JOIN,2->LEFT JOIN,3->RIGHT JOIN,4->FULL OUTER JOIN
--Bonus 1-> CROSS JOIN ,2->SELF JOIN


--🔹 1 INNER JOIN – matching data only

--👉 Sirf wahi rows jahan dono tables me match milta hai.

SELECT 
    P.ProductName,
    C.CategoryName
FROM Products P
INNER JOIN Categories C
    ON P.CategoryID = C.CategoryID;

	--Products table me CategoryID hota hai
--Categories table me bhi CategoryID hota hai.
--✔ Sirf woh products milenge jinki category exist karti ho.


--🔹 2 LEFT JOIN – left table ka saara, right ka matching

--👉 Left table = full
--👉 Right table = sirf matching

SELECT 
    P.ProductName,
    C.CategoryName
FROM Products P
LEFT JOIN Categories C
    ON P.CategoryID = C.CategoryID;

--Products (Left) + Categories (Right)
--✔ Sare products milenge
--✔ Jinki category missing hai → NULL aayega

--🔹 3 RIGHT JOIN – right table ka saara, left ka matching

--LEFT JOIN ka ulta.
SELECT
    P.ProductName,
    C.CategoryName
FROM Products P
RIGHT JOIN Categories C
    ON P.CategoryID = C.CategoryID;

--✔ Sare categories milengi
--✔ Agar kisi category me product nahi hai → NULL

--🔹 4 FULL OUTER JOIN – dono ka complete data

--👉 Left + Right sab record
--👉 Match ho to jodega
--👉 Nahi ho to bhi dikhayega

SELECT 
    P.ProductName,
    C.CategoryName
FROM Products P
FULL OUTER JOIN Categories C
    ON P.CategoryID = C.CategoryID;

--🔹 5 CROSS JOIN – sabko sabse mila do

--👉 Har row ko dusre table ki har row se multiply kar do
--👉 Cartesian product

SELECT
    E.FirstName,
    C.CategoryName
FROM Employees E
CROSS JOIN Categories C;




