--⭐ 1) GROUP BY — Kya hota hai?

--GROUP BY ka matlab hota hai data ko group me divide karna.

--Example:
--• Kitne employees same BirthYear me born hue?
--• Kitne employees same FirstName wale hain?
--• Kitne employees ke Notes me French word aata hai?


--⭐ 2) HAVING — Kya hota hai?

--HAVING ka use Group By ke baad filtering ke liye hota hai.
--Ye WHERE ka bhai hai, lekin GROUP BY ke baad lagta hai.
--WHERE → group banne se pehle filter
--HAVING → group banne ke baad filter

--✔ Example 1: Kitne employees har BirthYear me born hue? (GROUP BY)
SELECT YEAR(BirthDate) AS BirthYear,
       COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY YEAR(BirthDate);
select * from Employees

--✔ Example 2: Sirf un BirthYears ko dikhana jisme 1 se zyada employees hain (HAVING)
SELECT YEAR(BirthDate) AS BirthYear,
       COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY YEAR(BirthDate)
HAVING COUNT(*) > 1;
select * from Employees

--✔ Example 3: Same FirstName wale employees ka group
SELECT FirstName, COUNT(*) AS NameCount
FROM Employees
GROUP BY FirstName;

--✔ Example 4: Notes me “French” word wale employees ka grouping
SELECT 
    CASE 
        WHEN CHARINDEX('French', Notes) > 0 THEN 'Has French'
        ELSE 'No French'
    END AS FrenchStatus,
    COUNT(*) AS Total
FROM Employees
GROUP BY 
    CASE 
        WHEN CHARINDEX('French', Notes) > 0 THEN 'Has French'
        ELSE 'No French'
    END;

	--✔ Example 5: Sabse purane BirthYears (MIN + GROUP BY)
	SELECT YEAR(BirthDate) AS BirthYear,
       MIN(BirthDate) AS OldestEmployeeBorn
FROM Employees
GROUP BY YEAR(BirthDate);

--✔ Example 6: HAVING ke saath complex logic
SELECT YEAR(BirthDate) AS BirthYear,
       AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) AS AvgAge
FROM Employees
GROUP BY YEAR(BirthDate)
HAVING AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) > 50;
--BirthYear jisme employees ki age avg. 50+ ho:

--✔ Example 8: Photo file extension ke group
SELECT RIGHT(Photo, 3) AS FileType,
       COUNT(*) AS Total
FROM Employees
GROUP BY RIGHT(Photo, 3);
